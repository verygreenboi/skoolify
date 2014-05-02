class AddReferenceToApiKey < ActiveRecord::Migration
  def change
  	add_reference :api_keys, :users, index: true
  end
end
