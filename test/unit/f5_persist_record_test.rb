# == Schema Information
#
# Table name: f5_persist_records
#
#  id                 :integer         not null, primary key
#  f5_persist_list_id :integer
#  tmm                :integer
#  mode               :string(255)
#  value              :text
#  age                :integer
#  virtual_name       :text
#  virtual_addr       :string(255)
#  node_addr          :string(255)
#  pool_name          :text
#  client_adr         :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

require 'test_helper'

class F5PersistRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
