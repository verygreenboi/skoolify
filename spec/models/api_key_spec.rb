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

require 'spec_helper'

describe ApiKey do
  pending "add some examples to (or delete) #{__FILE__}"
end
