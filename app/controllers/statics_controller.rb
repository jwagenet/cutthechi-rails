class StaticsController < ApplicationController
  def event
  end

  def index
		@candidates = Candidate.find((1..Candidate.count).to_a.shuffle[0..2])
		#@candidates = Candidate.find(3.times.map{1 + Random.rand(Candidate.count)})
  	@bid = current_user.bids.build if logged_in?
	end
end
