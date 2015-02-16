class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :recipient_id

      t.string :message

      t.boolean :read, default: false
      t.boolean :invite, default: false

      t.timestamps null: false
    end
  end
end
