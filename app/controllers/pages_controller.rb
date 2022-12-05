class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activities = Activity.all
    @markers = @activities.geocoded.map do |a|
      {
        lat: a.latitude,
        lng: a.longitude
      }
    end
  end
end
