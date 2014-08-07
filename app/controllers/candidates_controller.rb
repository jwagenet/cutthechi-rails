class CandidatesController < ApplicationController
  def index
		@candidates = Candidate.all
		@bid = current_user.bids.build if logged_in?
  end


end
