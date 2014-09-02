module BidsHelper

	def highest_bid(candidate)
		if candidate.bids.count == 0
			return 0
		else
			return candidate.bids.order('bid DESC').first[:bid]
		end
	end
	

	def minimum_bid(candidate)
		if highest_bid(candidate) == 0
			return 15
		else
			return highest_bid(candidate) + 5
		end
	end


end
