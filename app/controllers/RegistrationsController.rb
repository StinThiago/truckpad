RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:email, :password, profile_attributes: [:first_name, :last_name])
  end
end