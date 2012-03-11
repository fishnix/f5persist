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

class F5PersistList < ActiveRecord::Base
  has_many :f5_persist_records, :dependent => :destroy
end
