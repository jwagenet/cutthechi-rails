class Bid < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :candidate
	default_scope -> { order('created_at DESC') }
	validates :candidate_id, presence: true
	validates :user_id, presence: true

	validates :bid, presence: true, numericality: { only_integer: true }
	#validates :bid, numericality: { greater_than_or_equal_to: Candidate.find(bid.candidate_id).bids.order('bid DESC').first[:bid]}
	#validate :multiple_of_five

	def multiple_of_five
		if bid.blank? || bid % 5 != 0
			errors.add(:bid, "must be multiple of $5")
		end
	end
	
	def greater_than_minimum
		if bid <= minimum_asd
			errors.add(:bid, "must be greater than the highest bid")
		end
	end
	
	
end
