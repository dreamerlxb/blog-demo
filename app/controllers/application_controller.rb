class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DefaultPageContent

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_title

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  # def set_title
  #   @page_title = 'Ruby Demo'
  # end
end
