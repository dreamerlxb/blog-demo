class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DefaultPageContent
  include CurrentUserConcern

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_title

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
