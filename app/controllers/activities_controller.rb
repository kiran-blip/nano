class ActivitiesController < ApplicationController
  # before_action :authorize

  def index
    @activities = policy_scope(Activity)

    searches = []

    # Refactor this by performing one nested search after another.
    # For example, filter by the general search query, then *within that*,
    # filter by tag.

    # GENERAL SEARCH
    if params[:query].present?
      # @activities = Activity.search_all(params[:query])
      searches.push("Activity.search_all(params[:query])")
    elsif params[:query] == "" || params[:query].to_s.include?("+")
      searches.push("Activity.all")
    end

    # ALL ACTIVITIES
    if params[:query].nil? && params[:tags].nil? && params[:min].nil? && params[:max].nil?
      # @activities = Activity.all
      searches.push("Activity.all")
    end

    # TAGS SEARCH
    if !params[:tags].nil?
      # @activities = Activity.search_by_tags(params[:tags])
      searches.push("Activity.search_by_tags(params[:tags])")
    end

    # PRICE SEARCH
    if !params[:min].nil? || !params[:max].nil?
      if params[:min] == ""
        min_price = 0
      else
        min_price = params[:min].to_i
      end

      if params[:max] == ""
        max_price = 100_000_000
      else
        max_price = params[:max].to_i
      end

      # @activities = Activity.where(price: min_price..max_price)
      range = "Activity.where(price: #{min_price}..#{max_price})"
      searches.push(range)
    end

    # FREE SEARCH
    if params[:free] == "on"
      searches.push("Activity.where(free: true)")
    end

    # NO BOOKING REQUIRED SEARCH
    if params[:no_booking] == "on"
      searches.push("Activity.where(booking: false)")
    end

    # PERFORM SEARCH
    @activities = eval(searches.join(" & ")) # eval() is a serious security issue
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

    authorize @activity
    @review = Review.new

  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create

    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end

    authorize @activity
  end

  def destroy

    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path, status: :see_other

    authorize @activity
  end

  def favorite
    activity = Activity.find(params[:id])
    current_user.favorite(activity)
    redirect_to activity_path(activity)
    authorize activity
  end

  def unfavorite
    user = User.find(params[:user_id])
    activity = Activity.find(params[:activity_id])
    user.unfavorite(activity)
  end

  private

  def activity_params
    params.require(:activity).permit(:free, :booking, :start, :end, :name, :description, :location, :price, :venue, photos: [], tag: [])
  end

end
