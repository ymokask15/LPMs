class ApplicationController < ActionController::Base

    include SessionsHelper

    private
    # ログイン済みユーザーかどうか確認
     def logged_in_user
       unless logged_in?
         redirect_to login_url
       end
     end
     def basic_authenticate
      authenticate_or_request_with_http_basic do |user, pass|
          user == 'a' && pass == 'a'
          session[:login_states] = 1
      end
      logger.debug("============")
      logger.debug(cookies.inspect)
      logger.debug("============")
    end
end
