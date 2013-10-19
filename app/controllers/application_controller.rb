class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :create_body_id

  def create_body_id
    @body_id = "#{params[:controller]}-#{params[:action]}".gsub(/\/|_/, '-')
  end

end
