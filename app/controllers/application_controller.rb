class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        if session[:user_id]
            current_user ||= User.find_by_id(session[:user_id])
        else
            current_user = nil
        end
    end

    def authenticate
        if !current_user
            redirect_to signin_path
        end
    end
end
