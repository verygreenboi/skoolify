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

class ApiKey < ActiveRecord::Base
	
	belongs_to :user

	before_create :generate_token

	def generate_token
      begin
        self.token = SecureRandom.hex.to_s
      end while self.class.exists?(token: token)
    end

end
