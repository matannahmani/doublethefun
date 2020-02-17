class DashboardsController < ApplicationController
  skip_after_action :verify_policy_scoped, :only => :index
  def index
    @events = policy_scope(Event)
    @attendances = policy_scope(Attendance)
    @my_events = @events.where(user: current_user)
    @my_attendances = @attendances.where(user: current_user)
  end
end
