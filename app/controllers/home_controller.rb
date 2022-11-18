class HomeController < ApplicationController

  protect_from_forgery with: :exception
  
  before_action :basic_authenticate, only: %i[ login_complete ]

  def login_complete
  end

  def top
  end
  private

  
  
  # def search
  #   if params[:search.present?
  #     @category_list = Lost_item.where("keyword like '%" + params[:search][:keyword] + "%'").order(:created_at => "desc")
  #   else
  #     @category_list = Lost_item.all.order(:created_at => "desc")
  #   end
  #   render :search
  # end

end