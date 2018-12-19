# == Schema Information
#
# Table name: shops
#
#  id         :integer          not null, primary key
#  name       :string
#  logo       :string
#  phone      :text
#  website    :string
#  twitter    :string
#  instagram  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :string
#  latitude   :float
#  longitude  :float
#

class Shop < ApplicationRecord
  has_many :products
  mount_uploader :logo, ImageUploader
  geocoded_by :address
  after_validation :geocode
end
