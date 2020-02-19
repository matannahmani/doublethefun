class EventsController < ApplicationController
  before_action :find_event, only: [:edit,:show,:destroy,:edit,:update]

  def index
    if params[:query].present?
      @events = policy_scope(Event.search_by_team_and_location(params[:query]))
    else
      @events = policy_scope(Event)
    end
  end

  def show
    # @event[lat] = @event.latitude
    # @event[lng] = @event.longitude
    @markers = {
        lat: @event.latitude,
        lng: @event.longitude
      }
  end

  def destroy
    @event.destroy()
    redirect_to(root_path)
  end

  def edit

  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(strong_params)
    @event.user_id = current_user.id
    if @event.save
      authorize @event
    redirect_to(root_path)
    else
      authorize @event
      flash[:alert] = 'Event was not saved.'
      redirect_to(root_path)
    end
  end

  def update
    @event.update(strong_params)
    redirect_to(root_path)
  end

  private

  def find_event
    if Event.exists?(params[:id])
      @event = Event.geocoded.find(params[:id])
      authorize @event
    else
      redirect_to(root_path)
    end
  end

  def strong_params
    params.require(:event).permit(:name, :description, :location,:team,:user_id,:photo, :date )
  end
end
