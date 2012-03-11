# == Schema Information
#
# Table name: f5_persist_lists
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  content    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class F5PersistListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
