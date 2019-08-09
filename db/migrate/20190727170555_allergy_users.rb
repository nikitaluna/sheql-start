class AllergyUsers < ActiveRecord::Migration[5.2]
  def change
	create_table :allergy_users do |t|
		t.references :user
		t.references :allergy 
		end
  end
end
