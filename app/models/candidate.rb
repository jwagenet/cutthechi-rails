class Candidate < ActiveRecord::Base
	has_many :bids
	has_many :users , through: :bids
		
  validates :photo, presence: true,  uniqueness: {case_sensitive: false }

	
	def self.search(search)
  	if search
			Candidate.all.where('LOWER(name) LIKE ?', "%#{search.downcase}%")
 		else
			Candidate.all
  	end
	end
end
