class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :shop_id
      t.integer :provider_id
      t.string :name
      t.string :category
      t.integer :quantity
      t.boolean :taken
      t.boolean :enabled

      t.timestamps
    end
    add_index :products,:shop_id
    add_index :products,:provider_id
  end
end
