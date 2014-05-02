class SchoolApiKeyRelation < ActiveRecord::Migration
  def change
  	add_reference :school_api_keys, :schools, index: true
  end
end
