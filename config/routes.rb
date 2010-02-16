# Put your extension routes here.

# map.namespace :admin do |admin|
#   admin.exporter 'exporter', :controller => :exporter, :action => :index
# end  

map.pricelist 'pricelist.:format', :controller => :exporter, :action => :pricelist
