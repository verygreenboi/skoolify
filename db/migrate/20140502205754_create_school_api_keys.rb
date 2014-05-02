class CreateSchoolApiKeys < ActiveRecord::Migration
  def change
    create_table :school_api_keys do |t|
  		t.string :token, null: false
      t.timestamps
    end
  end
end
