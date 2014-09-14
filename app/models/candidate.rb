class Candidate < ActiveRecord::Base
	has_many :bids
	has_many :users , through: :bids
		

	def self.search(search)
  	if search
			Candidate.all.where('LOWER(name) LIKE ?', "%#{search.downcase}%")
 		else
			Candidate.all
  	end
	end
end
