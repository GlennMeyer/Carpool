class CreateCommutes < ActiveRecord::Migration
  def change
    create_table :commutes do |t|
      t.references :user

      t.string :meetup_street
      t.string :meetup_city
      t.string :meetup_state

      t.float :meetup_lat
      t.float :meetup_lng

      t.string :dropoff_street
      t.string :dropoff_city
      t.string :dropoff_state

      t.float :dropoff_lat
      t.float :dropoff_lng

      t.time :meetup_time
      t.time :dropoff_time

      t.integer :search_distance

    end
  end
end
