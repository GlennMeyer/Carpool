class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.references :user, null: false
      t.references :commute, null:false

      t.boolean :looking, default: true

      t.timestamps null: false
    end
  end
end
