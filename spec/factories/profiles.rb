# == Schema Information
#
# Table name: profiles
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  other_name    :string(255)
#  sex           :string(255)
#  date_of_birth :datetime
#  religion      :string(255)
#  address_1     :string(255)
#  address_2     :string(255)
#  city          :string(255)
#  state         :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  users_id      :integer
#
# Indexes
#
#  index_profiles_on_users_id  (users_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
  end
end
