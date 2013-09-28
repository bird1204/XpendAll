class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :provider_id
      t.string :name
      t.string :address
      t.string :country
      t.string :region
      t.integer :category
      t.boolean :enabled

      t.timestamps
    end
  end
end
