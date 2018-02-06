class RegistrationsController < Devise::RegistrationsController

  def create
		build_resource(sign_up_params)

		# if params[:user][:family_name] = ''
			# flash[:notice] = "There is no family name"

		# set_flash_message = missing f
		resource.save
		yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
				family = Family.create(name: params[:user][:family_name])
				resource.update_attribute(:family, family)
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
			binding.pry
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :family_name)
  end

end
