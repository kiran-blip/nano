class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    @activities = Activity.all
    @activity = Activity.find(params[:id])
    @markers = @activities.geocoded.map do |a|
      {
        lat: @activity.latitude,
        lng: @activity.longitude
      }
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activities_path, notice: "Added #{@activity.name}!"
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :location)
  end
end
