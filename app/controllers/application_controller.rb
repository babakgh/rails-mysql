class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :log_request

  def log_request
    CustomLogger.log_request(request.remote_ip)
  end
end
