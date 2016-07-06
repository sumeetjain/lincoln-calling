class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_filter :authenticate
    
    def render_404
        redirect_to :root
    end
    
    protected
    
    def authenticate
        authenticate_or_request_with_http_basic do |username, password|
            username == ENV["SITE_LOGIN"] && password == ENV["SITE_PASSWORD"]
        end
    end
end
