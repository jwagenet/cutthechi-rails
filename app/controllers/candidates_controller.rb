class CandidatesController < ApplicationController
  	before_action :admin_user,			only: :destroy
  
  def index
		@candidates = Candidate.search(params[:search]).order('name ASC')
		@bid = current_user.bids.build if logged_in?
  end

	def show
		@candidate = Candidate.find(params[:id])
		@bid = current_user.bids.build if logged_in?
		@show = 1
	end
	
	def destroy
		Candidate.find(params[:id]).destroy
		flash[:success] = "User deleted"
		redirect_to User.find(1)
	end
		
		private
		
		def admin_user
			redirect_to(root_url) unless current_user.admin?
		end
		

end


