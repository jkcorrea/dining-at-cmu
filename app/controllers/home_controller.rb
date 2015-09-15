class HomeController < ApplicationController
  def index
    @locations = Location.all
    @user_loc = request.location
  end

  def by_loc
    lat = params["lat"]
    lon = params["lon"]
    @locations = Location.near([lat, lon], 1_000_000, order: 'distance') # order by coords
    raw_html = render_to_string(partial: 'home/eateries')
    respond_to do |fmt|
      fmt.json { render json: { success: true, html: raw_html } }
    end
  end
end
