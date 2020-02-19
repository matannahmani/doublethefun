module EventHelper

  def format_name
     "#{current_user.first_name} #{current_user.last_name}"
  end
end
