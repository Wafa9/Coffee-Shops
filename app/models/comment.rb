class Comment < ApplicationRecord
  has_many :shops
  has_many :products
end
