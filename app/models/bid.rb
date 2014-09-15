class Bid < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :candidate

	validates :candidate_id, presence: true
	validates :user_id, presence: true
	validates :minimum_bid, presence: true

	validates :bid, presence: true, numericality: { only_integer: true}#, greater_than_or_equal_to: Candidate.find(candidate_id).bids.order('bid DESC').first[:bid], message: "must be at least $Candidate.find(candidate_id).bids.order('bid DESC').first[:bid]" } 
	validate :multiple_of_five, :greater_than_minimum, :less_than_max

	def multiple_of_five
		if bid.blank? || bid % 5 != 0
			errors.add(:bid, "must be an increment of $5")
		end
	end
	
	def greater_than_minimum
		if bid.blank? || bid < minimum_bid
			errors.add(:bid, "must be at least $#{minimum_bid}")
		end
	end	
	
	def less_than_max
		if bid.blank? || bid > (minimum_bid + 45)
			errors.add(:bid, "must be within $50 of current bid")
		end
	end	
	
end
