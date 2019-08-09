class CreateUser < ActiveRecord::Migration[5.2]
  def change
	create_table :users do |t|
		t.string :name
		t.date :date_of_birth 
		t.string :gender
		t.string :email
	end
  end
end