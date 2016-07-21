class Product < ApplicationRecord
    
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :description, presence: true
    validates :deadline, presence: true
    
    belongs_to :user
    
    def deadline
        (created_at + (10 * 60 * 60 * 24)).to_formatted_s(:short)
    end
    
end
