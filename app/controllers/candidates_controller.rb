class CandidatesController < ApplicationController
  def index
		@candidates = Candidate.all
		@bid = current_user.bids.build if logged_in?
  end

	def show
		@candidate = Candidate.find(params[:id])
		@bid = current_user.bids.build if logged_in?
	end


end
