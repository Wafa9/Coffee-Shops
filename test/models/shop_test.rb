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

require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
