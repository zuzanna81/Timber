class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
	  devise_parameter_sanitizer.sanitize(:sign_up)
	end

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :family)
	end

end
