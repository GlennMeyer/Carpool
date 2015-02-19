class ChangeColumnInCommutes < ActiveRecord::Migration
  def change
    rename_column :commutes, :meetup_time, :leave_time
    rename_column :commutes, :dropoff_time, :return_time
  end
end
