class VisitStable < ActiveRecord::Migration[5.2]
  def change
	create_table :visits do |t|
		t.date :symptom_date
		t.string :symptom
		t.references :user
	end
  end
end
