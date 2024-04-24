Rails.application.routes.draw do
  get("/", { :controller => "master", :action => "home"})
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "master", :action => "d2d6"})
end
