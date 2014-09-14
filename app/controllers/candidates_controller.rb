class CandidatesController < ApplicationController
  def index
		@candidates = Candidate.search(params[:search]).order('name ASC')
		@bid = current_user.bids.build if logged_in?
  end

	def show
		@candidate = Candidate.find(params[:id])
		@bid = current_user.bids.build if logged_in?
		@show = 1
	end


end
