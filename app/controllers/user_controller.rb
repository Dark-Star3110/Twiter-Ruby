class UserController < ApplicationController
  def index
      @users = User.all
  end
  def show
     @users = User.find(params[:format])
     @blogs =  Blog.where(["email like ?", "%#{@users.email}%"]).paginate(:page => params[:page], :per_page =>6) 
  end
  def user_params
      params.require(:user).permit(:email, :password, :name,:avatar,:password_confirmation, :age)
    end
  
end

