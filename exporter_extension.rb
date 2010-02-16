# -*- coding: utf-8 -*-
# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ExporterExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/export_products"

  # Please use export_products/config/routes.rb instead for extension routes.

  def self.require_gems(config)
    config.gem "fastercsv"
    config.gem "comma"
  end
  
  def activate

    Product.class_eval do
      # ===============
      # = CSV support =
      # ===============
      comma do  # implicitly named :default
        author :name_with_initials => I18n.t(:name_with_initials, :scope => [:activerecord, :attributes, :author])
        initial_name I18n.t(:name, :scope => [:activerecord, :attributes, :product])
        master_price I18n.t(:master_price, :scope => [:activerecord, :attributes, :product])
      end

    end

  end

end
