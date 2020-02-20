class AttendancesController < ApplicationController

  before_action :set_event

  def create
    if check_event
    attendance = Attendance.create(event_id: @event.id , user_id: current_user.id)
    authorize attendance
    redirect_to root_path, alert: 'You joined the Event!'
    else
    authorize Attendance.where(event_id: @event.id)
    redirect_to root_path, alert: "Event is full"
    end
  end

  private

  def set_event
    @event = Event.find(params["event_id"])
  end

  private

  def check_event
    if Attendance.find_by(event: @event.id).nil? && @event.user_id != current_user.id
      return true
    elsif Attendance.where(event_id: @event.id).any? {|attd| attd.user_id != current_user.id }
      return true
    else
      return false
    end
  end

  def event_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address)
  end
end
