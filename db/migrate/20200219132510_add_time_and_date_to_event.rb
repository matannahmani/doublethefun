class AddTimeAndDateToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :date, :datetime
  end
end
