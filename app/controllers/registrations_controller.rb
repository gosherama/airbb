class RegistrationsController < Devise::RegistrationsController

protected
  #Update Devise without password confirmation
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end