class LostItemsController < ApplicationController
  before_action :set_lost_item, only: %i[ show edit update destroy ]

  # GET /lost_items or /lost_items.json
  def index
    if params[:category_name].present?
      @lost_items = LostItem.where(category: params[:category_name])
    else
      @lost_items = LostItem.all
    end
  end

  # GET /lost_items/1 or /lost_items/1.json
  def show
  end

  # GET /lost_items/new
  def new
    @lost_item = LostItem.new
  end

  # GET /lost_items/1/edit
  def edit
  end

  # POST /lost_items or /lost_items.json
  def create
    @lost_item = LostItem.new(lost_item_params)

    respond_to do |format|
      if @lost_item.save
        format.html { redirect_to lost_item_url(@lost_item), notice: "落とし物情報を登録しました" }
        format.json { render :show, status: :created, location: @lost_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lost_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lost_items/1 or /lost_items/1.json
  def update
    respond_to do |format|
      if @lost_item.update(lost_item_params)
        format.html { redirect_to lost_item_url(@lost_item), notice: "落とし物情報を変更しました" }
        format.json { render :show, status: :ok, location: @lost_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lost_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lost_items/1 or /lost_items/1.json
  def destroy
    @lost_item.destroy

    respond_to do |format|
      format.html { redirect_to lost_items_url, notice: "落とし物情報を削除しました" }
      format.json { head :no_content }
    end
  end

  def search
  end

  def search_list
    if params[:search][:keyword].present?
      @lost_items = LostItem.where("item_name like '%" + params[:search][:keyword] + "%'").order(:date_picked => "desc")
    else
      @lost_items = LostItem.where(id: 0)
    end
  end

  def category_list
    @list = LostItem.all.pluck(:category).uniq.sort
  end


  def count
    cnt = LostItem.where(category_name).count
    render text: "#{cnt}"
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost_item
      @lost_item = LostItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lost_item_params
      params.require(:lost_item).permit(:item_name, :date_picked, :where_picked, :feature, :storage_period, :category)
    end
end
