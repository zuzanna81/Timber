class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_in_path_for(resource_or_scope)
   family_path
  end
end