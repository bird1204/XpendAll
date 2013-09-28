class Rank < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :provider
  belongs_to :shop
end
