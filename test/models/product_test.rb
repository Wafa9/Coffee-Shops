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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
