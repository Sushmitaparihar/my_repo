class UsersController < ApplicationController
	
	def user_params
  params.require(:user).permit(:firstname, :lastname, :gender, profile_attributes: [:bio,:about,:age, :birthdate,:profile_picture], contact_attributes: [:address ,:phone_number, :email])
end 

def index
	@users = User.all
	render json: @users
end

def create
	@user = User.new
end

def show

end

def destroy


end

def update
    
 end

 private

	 def user_params
	 	param.require(:user).permit(:firstname,:lastname)
	 end
end
