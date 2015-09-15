class Location < ActiveRecord::Base
  has_many :eateries
  reverse_geocoded_by :latitude, :longitude
end
