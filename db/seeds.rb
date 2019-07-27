allergies = [ 
"Dairy", "Wheat", "Pollen", "Nuts", "Latex", "Pet Dander", "Mold"
]

allergies.each do |name| 
	Allergy.create(name: name)
end 