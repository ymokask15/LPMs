class HomeController < ApplicationController
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