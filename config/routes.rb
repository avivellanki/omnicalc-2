Rails.application.routes.draw do

  self.get("/add", {:controller => "application", :action => "add"})
  self.get("/wizard_add", {:controller => "application", :action => "wizard_add"})

  self.get("/subtract", {:controller => "application", :action => "subtract"})
  self.get("/wizard_subtract", {:controller => "application", :action => "wizard_subtract"})
  
  self.get("/multiply", {:controller => "application", :action => "multiply"})
  self.get("/wizard_multiply", {:controller => "application", :action => "wizard_multiply"})  
  
  self.get("/divide", {:controller => "application", :action => "divide"})
  self.get("/wizard_divide", {:controller => "application", :action => "wizard_divide"})

  self.get("/street_to_coords/new", {:controller => "streetcoord", :action => "get_user_info"})
  self.get("/results", {:controller => "streetcoord", :action => "get_lat_lon_info"})
  
end
