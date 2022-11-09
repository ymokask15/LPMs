class HomeController < ApplicationController

  protect_from_forgery with: :exception
  
  before_action :basic_authenticate

  private

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user, pass|
        user == 'a' && pass == 'a'
    end
  end

  def top
  end

  def search
  end
end
