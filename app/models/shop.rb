class Shop < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :products
  has_many :ranks
  belongs_to :provider 
end
