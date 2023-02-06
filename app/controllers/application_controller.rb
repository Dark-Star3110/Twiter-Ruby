class ApplicationController < ActionController::Base
  before_action :application
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit :sign_up, keys: [:name, :age, :avatar]
      devise_parameter_sanitizer.permit :account_update, keys: [:name, :age, :avatar]
    end
  # create object of blog class
  def application
  @blogs=Blog.all
  end

   private
  # check user logined or not also check if it is admin or not
  def checkAdmin
    if !admin_signed_in?
      # if current user is not an admin then can't access the page like add teacher,department,college and new subject
      redirect_to root_path, notice: "Only Admin Can Access This Page"
    end
  end
end
