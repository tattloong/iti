class Went < ApplicationRecord
	belongs_to :user

	validates :country,
						 presence: true

	validates :destination,
						 presence: true

	validates :duration,
						 presence: true

	validates :activity,
						 presence: true

	validates :address,
						 presence: true

	validates :price,
						 presence: true

	validates :description,
						 presence: true


	geocoded_by :address
	if :address_changed?
	after_validation :geocode
	end 

	def self.search(search)
		where("country LIKE ?", "%#{search}%")
	end
end
