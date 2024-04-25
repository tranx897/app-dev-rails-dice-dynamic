Rails.application.routes.draw do
  get("/", :controller => "dice", :action => "home" )
  get("/dice/:dice/:sides", :controller => "dice", :action => "roll" )
  
end
