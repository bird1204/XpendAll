class AddIndex < ActiveRecord::Migration
  def change
    add_index :shops,:provider_id
  end
end
