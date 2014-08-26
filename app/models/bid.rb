class Bid < ActiveRecord::Base
	belongs_to :user
	belongs_to :candidate
	
	#default_scope -> { order('created_at DESC') }
	validates :candidate_id, presence: true
	validates :user_id, presence: true
	#validates :minimum_bid, presence: true
	
	validates :bid, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: Candidate.find(1).id, message: "must be greater than #{Candidate.find(1).bids.first[:bid]}" } 
	validate :multiple_of_five, #:greater_than_minimum

	def multiple_of_five
		if bid.blank? || bid % 5 != 0
			errors.add(:bid, "must be an increment of $5")
		end
	end
	
	def greater_than_minimum
		if bid >= minimum_bid(candidate_id)
			errors.add(:bid, "must be greater than the highest bid")
		end
	end
end

