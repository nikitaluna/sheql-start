class User < ActiveRecord::Base
	has_many :visits
	has_many :allergy_users
	has_many :allergies, through :allergy_users
end