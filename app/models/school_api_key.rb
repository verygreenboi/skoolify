# == Schema Information
#
# Table name: school_api_keys
#
#  id         :integer          not null, primary key
#  token      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  schools_id :integer
#
# Indexes
#
#  index_school_api_keys_on_schools_id  (schools_id)
#

class SchoolApiKey < ActiveRecord::Base

	# Associations

	belongs_to :schools

end
