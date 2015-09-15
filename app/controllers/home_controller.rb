class HomeController < ApplicationController
  def index
    @locations = Location.all
    @user_loc = request.location
  end

  def by_coords
    @locations = Location.all # order by coords
    respond_to do |fmt|
      fmt.json { render json: { success: true, html: render_to_string 'home/eateries' } }
      fmt.html { }
    end
  end
end
