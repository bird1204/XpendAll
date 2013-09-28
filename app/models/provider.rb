class Provider < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :products
  has_many :shops
  has_many :ranks
end
