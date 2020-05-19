class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :phone, :zipcode, :city, :adress, :idcard, :driverlicence, :vitalcard, :dateofbirth, :email, :password, :current_password) }
    end

	def after_sign_in_path_for(resource)
  		private_path
	end
	def after_update_path_for(resource)
		private_path(resource)		
	end
end
