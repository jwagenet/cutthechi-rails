class BidsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@bid = current_user.bids.build(bid_params)
		
		if @bid.save
			flash[:success] = "Thanks for bidding!"
			redirect_to root_path
		else
			@candidate = Candidate.find(params[:bid][:candidate_id])
			render "candidates/show"
		end
	end

	def destroy
	end

	private 
		def bid_params
			params.require(:bid).permit(:bid, :candidate_id, :minimum_bid)
		end


end