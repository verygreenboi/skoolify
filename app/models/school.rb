class School < ActiveRecord::Base

	has_one :school_api_key, dependent: :destroy

end
