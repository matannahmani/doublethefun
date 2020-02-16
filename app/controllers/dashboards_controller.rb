class DashboardsController < ApplicationController
  def index
    @event = Event.find(current_user.events.first.id)
    @attendance = Attendance.find(@event.attendances)
  end
end
