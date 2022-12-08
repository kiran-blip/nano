class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activities = Activity.all
    @markers = @activities.geocoded.map do |a|
      {
        lat: a.latitude,
        lng: a.longitude,
        image_url: helpers.asset_url("mapbox-marker-icon-20px-purple.png")
      }
    end
  end
end
