class Bid < ActiveRecord::Base
	belongs_to :user
	belongs_to :candidate
	validates :candidate_id, presence: true
	validates :user_id, presence: true

	validates :bid, numericality: { only_integer: true, message: "must be a number" }
	#validates :bid, numericality: { greater_than: candidate.bids.order('bid DESC').first[:bid] }
	validate :multiple_of_five

	def multiple_of_five
		if bid % 5 != 0
			errors.add(:bid, "must be multiple of $5")
		end
	end
	
	def greater_than_minimum
		if bid <= candidate.bids.order('bid DESC').first[:bid]
			errors.add(:bid, "must be greater than the highest bid")
		end
	end
	
	
end
