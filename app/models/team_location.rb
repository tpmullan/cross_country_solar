class TeamLocation < ActiveRecord::Base
  belongs_to :team
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
end
