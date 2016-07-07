class TimeEntry < ApplicationRecord
	belongs_to :project

	validates :hours, presence: true,
			  numericality: { only_integer: true }

	validates :minutes, presence: true,
			  numericality: { only_integer: true }

	# validates :date, presence: true

end


