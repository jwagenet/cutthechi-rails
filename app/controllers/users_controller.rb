class UsersController < ApplicationController
	before_action :logged_in_user, 	only: [:edit, :update, :show, :destroy]
	before_action :correct_user, 		only: [:edit, :update, :show ] 
	before_action :admin_user,			only: :destroy

	def show
		@user = User.find(params[:id])
		@bids = @user.bids.order('created_at DESC')
		@active = @bids & active_bids
		@all_bids = Bid.all
		@all_active = active_bids
		@users = User.all.order("name ASC")
	end

	def new
		@user = User.new
  end

	def create 
		@user = User.new(user_params)
		if @user.save
			login @user
			flash[:success] = "Thanks for registering! You may now bid."
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])		
	end	

	def update
		@user = User.find(params[:id])	
		if @user.update_attributes(update_params)
      flash[:success] = "Settings updated"
      redirect_to @user
    else
      render 'edit'
    end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User deleted"
		redirect_to User.find(1)
	end

	private
	 	
		def update_params
			params.require(:user).permit(:password,:password_confirmation)
		end
		def user_params
			params.require(:user).permit(:name, :email, :phone, :password, :password_confirmation)
		end

		def correct_user
			@user = User.find(params[:id])
			redirect_to(root_url) unless current_user?(@user)
		end

		def active_bids
			active = Array.new
			Candidate.pluck(:id).each do |i|
				if Candidate.find(i).bids.order('bid DESC').first
				active.push(Candidate.find(i).bids.order('bid DESC').first)
				end
			end
			return active
		end	
	
	def admin_user
		redirect_to(root_url) unless current_user.admin?
	end

end
