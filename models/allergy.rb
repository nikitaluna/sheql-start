class Allergy < ActiveRecord::Base
	has_many :allergy_users
	has_many :users, through: :allergy_users
end