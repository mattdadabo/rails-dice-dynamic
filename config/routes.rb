Rails.application.routes.draw do
  get("/", :controller => "dice", :action => "homepage")
  get("/dice/:num_dice/:num_sides", :controller => "dice", :action => "roll")
end
