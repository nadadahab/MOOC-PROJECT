class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception


       rescue_from CanCan::AccessDenied do |exception|
          flash[:error] = "Access denied."
          redirect_to root_url
       end

    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

        def configure_permitted_parameters
            #devise_parameter_sanitizer.**permit**(:sign_up, keys: [:username])
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :is_female, :date_of_birth, :avatar, :role) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar, :role) }
        end

end