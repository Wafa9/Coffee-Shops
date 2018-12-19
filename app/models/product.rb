# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  category_id :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  shop_id     :integer
#

class Product < ApplicationRecord
  belongs_to :shop
  mount_uploader :image, ImageUploader
end
