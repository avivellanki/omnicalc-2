class StreetcoordController < ActionController::Base
  layout ("application.html.erb")

  def get_user_info
    render({:template => "layouts/get_user_info.html.erb"})
  end
  
  def get_lat_lon_info
    render({:template => "layouts/get_lat_lon_info.html.erb"})
  end
end
