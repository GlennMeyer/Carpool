class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.references :user, null: false
      t.integer :riders, array:true
      t.references :commute, null:false

      t.timestamps null: false
    end
    add_index :drivers, :riders, using: 'gin'
  end
end
