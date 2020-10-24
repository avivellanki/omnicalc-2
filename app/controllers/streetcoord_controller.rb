class StreetcoordController < ActionController::Base
  layout ("application.html.erb")

  def get_user_info
    
    render({:template => "layouts/get_user_info.html.erb"})
       
  end
  
  def get_lat_lon_info
    
    # Fetch the URL. Make sure that the Key is in RAILS
    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + params.fetch("user_street_address") + "&key=" + ENV.fetch("GMAPS_API")
    # this opens the URL and stores as the raw data
    raw_data = open(url).read
    # now Parse the raw date using JSON. use the CLASS to see if this is a hash
    parsed_data = JSON.parse(raw_data)

    parsed_data_results = parsed_data.fetch("results")
    # parsed_data_results is an ARRAY. look at the JSON version and you can see that the 1st element of the array is a hash. 
    # storing the first element of the ARRAY in the hash. 
    parsed_data_hash = parsed_data_results[0]

    parsed_data_geo = parsed_data_hash.fetch("geometry")

    parsed_data_location = parsed_data_geo.fetch("location")

    @user_address = params.fetch("user_street_address")
    
    @lat = parsed_data_location.fetch("lat")
    
    @long = parsed_data_location.fetch("lng")

    render({:template => "layouts/get_lat_lon_info.html.erb"})
  end
end
