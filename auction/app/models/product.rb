class Product < ApplicationRecord
    
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :description, presence: true
    
    belongs_to :user
    
    def deadline_calc
        (self.created_at + (10 * 60 * 60 * 24))
    end

end