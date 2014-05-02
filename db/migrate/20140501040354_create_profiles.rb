class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

    	t.string :first_name
    	t.string :last_name
    	t.string :other_name

    	t.string :sex

    	t.datetime :date_of_birth

    	t.string :religion

    	t.string :address_1
    	t.string :address_2

    	t.string :city

    	t.string :state

      t.timestamps
    end
  end
end
