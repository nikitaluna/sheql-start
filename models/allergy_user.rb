class AllergyUser < ActiveRecord::Base
	belongs_to :allergy
	belongs_to :user
end