class AttendancesController < ApplicationController

  before_action :set_event

  def create
    attendance = Attendance.create(event: @event , user: current_user)
    redirect_to event_path(@event)
  end

  private

  def set_event
    @event = Event.find(params["event_id"])
  end

  def event_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address)
  end
end
