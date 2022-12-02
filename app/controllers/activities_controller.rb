class ActivitiesController < ApplicationController
  def index
    # raise
    # params[:query]
    if params[:query].nil? && params[:tags].nil?
      @activities = Activity.all
    elsif !params[:tags].nil?
      @activities = Activity.search_by_tags(params[:tags])
    else
      @activities = Activity.search_by_name_and_description_and_tag_and_location_and_venue(params[:query])
    end
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
    params.require(:activity).permit(:name, :description, :location, :price, :venue, :photo, tag:[])
  end
end
