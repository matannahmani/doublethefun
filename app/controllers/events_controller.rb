class EventsController < ApplicationController
  before_action :find_event, only: [:edit,:show,:destroy,:edit,:event,:update]
  def index
    @events = Event.all()
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
  end

  def create
    Event.create(strong_params)
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
    else
      redirect_to(root_path)
    end
  end

  def strong_params
    params.require(:event).permit(:name, :description, :location,:team,:user_id)
  end
end
