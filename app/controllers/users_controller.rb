class UsersController < ApplicationController
	before_action :logged_in_user, 	only: [:edit, :update, :show, :destroy]
	before_action :correct_user, 		only: [:edit, :update, :show ] 

	def show
		@user = User.find(params[:id])
		@bids = @user.bids.order('created_at DESC')
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
		
	end	

	def update
		if @user.update_attributes(user_params)
      flash[:success] = "Settings updated"
      redirect_to @user
    else
      render 'edit'
    end
	end

	private
	 
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

		def correct_user
			@user = User.find(params[:id])
			redirect_to(root_url) unless current_user?(@user)
		end

end
