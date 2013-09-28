class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :device_id
      t.integer :device_type
      t.integer :os
      t.boolean :enabled

      t.timestamps
    end
  end
end
