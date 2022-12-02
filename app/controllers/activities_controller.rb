class ActivitiesController < ApplicationController
  def index
    searches = []

    # Refactor
    if params[:query].nil? && params[:tags].nil? && params[:min].nil? && params[:max].nil?
      # @activities = Activity.all
      searches.push("Activity.all")
    end

    if !params[:tags].nil?
      # @activities = Activity.search_by_tags(params[:tags])
      searches.push("Activity.search_by_tags(params[:tags])")
    end

    if !params[:min].nil? || !params[:max].nil?
      if params[:min] == ""
        min_price = 0
      else
        min_price = params[:min].to_i
      end

      if params[:max] == ""
        max_price = 0
      else
        max_price = params[:max].to_i
      end

      # @activities = Activity.where(price: min_price..max_price)
      searches.push("Activity.where(price: min_price..max_price)")
    end

    if !params[:query].nil?
      # @activities = Activity.search_all(params[:query])
      searches.push("Activity.search_all(params[:query])")
    end

    @activities = eval(searches.join(" & "))
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
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :location, :price, :venue, :photo, tag:[])
  end

end
