class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end


  private
  def item_params
    params.require(:item).permit(:name, :category, :buy_date)
  end

end
