class Concert < ApplicationRecord
	# has many

	validates :artist, presence: true
	validates :venu, presence: true
	validates :city, presence: true
	validates :date, presence: true
	validates :price, presence: true
	validates :description, presence: true 
					 
end

