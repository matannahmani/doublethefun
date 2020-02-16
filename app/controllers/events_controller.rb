class EventsController < ApplicationController
  before_action :find_event, only: [:edit,:delete,:edit,:event]
  def index
    @events = Event.all()
  end

  def show

  end

  def delete
    @event.destroy()
  end

  def edit

  end

  def update

  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

end
