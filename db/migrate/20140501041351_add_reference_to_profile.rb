class AddReferenceToProfile < ActiveRecord::Migration
  def change
  	add_reference :profiles, :users, index: true
  end
end
