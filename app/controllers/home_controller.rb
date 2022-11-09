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
  
  # def search
  #   if params[:search.present?
  #     @category_list = Lost_item.where("keyword like '%" + params[:search][:keyword] + "%'").order(:created_at => "desc")
  #   else
  #     @category_list = Lost_item.all.order(:created_at => "desc")
  #   end
  #   render :search
  # end

end