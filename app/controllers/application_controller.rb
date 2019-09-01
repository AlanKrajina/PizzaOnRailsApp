class ApplicationController < ActionController::Base
    helper_method :admin_only, :current_user, :require_login

    def admin_only
        unless current_user.admin
   #       flash[:notice] = "You must be an admin to perform that function!"
          redirect_to user_path(current_user)
        end
      end
    
      def require_login
    
        unless current_user
          redirect_to root_url
        end
    
      end
    
      def current_user
    
        if session[:user_id].present?
          user = User.find_by(:id => session[:user_id])
        end
    
      end


end
