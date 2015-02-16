class CreateRideshares < ActiveRecord::Migration
  def change
    create_table :rideshares do |t|
      t.references :driver, null: false
      t.references :rider

      t.timestamps null: false
    end
  end
end
