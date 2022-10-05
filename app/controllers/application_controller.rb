class ApplicationController < ActionController::Base
    before_action :authenticate_user!, unless: :devise_controller? 
    add_flash_types :success, :warning, :danger

    def current_company 
        @current_company = current_user.company if user_signed_in?
    end
    helper_method :current_company
end
