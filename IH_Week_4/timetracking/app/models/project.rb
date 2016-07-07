class Project < ApplicationRecord
	has_many :time_entries

	validates :name, presence: true, 
					 length: { maximum: 30},
					 uniqueness: true
					 # format: {with: /\[A-Za-z]+ /}

	def self.clean_old
		
		old_projects = Project.where('created_at < ?', 1.week.ago)
		old_projects.destroy_all
		
	end				 
end
