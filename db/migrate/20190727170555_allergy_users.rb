class AllergyUsers < ActiveRecord::Migration[5.2]
  def change
	create_table :allergy_users do |t|
		t.reference :user
		t.reference :allergy 
		end
  end
end
