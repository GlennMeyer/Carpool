class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.references :user, null: false
      t.references :commute, null:false

      t.timestamps null: false
    end 
  end
end
