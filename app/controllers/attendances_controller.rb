class AttendancesController < ApplicationController

  before_action :set_event

  def create
    attendance = Attendance.new(event: @event , user: current_user)
    if attendance.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def set_event
    @event = Event.find(params["event_id"])
  end

end
