class RegistrationsController < Devise::RegistrationsController

	def edit
    	resource.update_attribute(:family, resource.invited_by.family)
    	super
  	end
  	
	private

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :family)
	end

end
