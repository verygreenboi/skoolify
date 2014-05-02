# == Schema Information
#
# Table name: api_keys
#
#  id         :integer          not null, primary key
#  token      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  users_id   :integer
#
# Indexes
#
#  index_api_keys_on_users_id  (users_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :api_key do
  end
end
