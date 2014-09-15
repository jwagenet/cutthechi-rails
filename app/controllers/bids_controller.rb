class BidsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :admin_user,			only: :destroy

	def create
		@bid = current_user.bids.build(bid_params)
		
		if @bid.save
			flash[:success] = "Thanks for bidding!"
			redirect_to current_user
		else
			@candidate = Candidate.find(params[:bid][:candidate_id])
			@show = 1
			render "candidates/show"
		end
	end

	def destroy
		Bid.find(params[:id]).destroy
		flash[:success] = "Bid deleted"
		redirect_to User.find(1)
	end
		
	private 
		def bid_params
			params.require(:bid).permit(:bid, :candidate_id, :minimum_bid)
		end
		
		def admin_user
			redirect_to(root_url) unless current_user.admin?
		end


end
