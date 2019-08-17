allergies = [ 
"Dairy", "Wheat", "Pollen", "Nuts", "Latex", "Pet Dander", "Mold"
]

allergies.each do |name| 
	Allergy.create(name: name)
end 

 User.create(
   name:"Nikita",
   email:"test@example.com",
   gender:"female",
   date_of_birth:Date.parse('2001-02-03')
)