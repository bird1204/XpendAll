class ChangeRankColumn < ActiveRecord::Migration
	def change
		remove_column(:ranks , :name) 
		remove_column(:ranks , :category) 
		remove_column(:ranks , :quantity) 
		remove_column(:ranks , :taken) 


		add_column(:ranks, :degree, :integer)
	end
end
