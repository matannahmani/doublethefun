class EventsController < ApplicationController
  before_action :find_event, only: [:edit,:show,:destroy,:edit,:update]
  def index
    @events = policy_scope(Event)
  end

  def show
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
    @event.save!
    authorize @event
    redirect_to(root_path)
  end

  def update
    @event.update(strong_params)
    redirect_to(root_path)
  end

  private

  def find_event
    if Event.exists?(params[:id])
      @event = Event.find(params[:id])
      authorize @event
    else
      redirect_to(root_path)
    end
  end

  def strong_params
    params.require(:event).permit(:name, :description, :location,:team,:user_id,:photo, :date )
  end
end
