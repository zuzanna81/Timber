class InvitationsController < Devise::InvitationsController

  def edit
    resource.update_attribute(:family, resource.invited_by.family)
    super
  end

end