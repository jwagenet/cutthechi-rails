class BidsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	
	def create
		@bid = current_user.bids.build(bid_params)
		if @bid.save
			flash[:success] = "Thanks for bidding!"
			redirect_to root_path
		else
			render :template => "candidates/#{@bid.candidate_id}"
		end
	end

	def destroy
	end

	private 
		def bid_params
			params.require(:bid).permit(:bid, :candidate_id)
		end

end