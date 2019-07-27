class Allergies < ActiveRecord::Migration[5.2]
  def change
	create_table :allergies do |t|
		t.string  :name
	end
  end
end
