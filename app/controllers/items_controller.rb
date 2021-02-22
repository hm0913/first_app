class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      flash[:notice] = "更新が完了しました！"
      redirect_to root_path
    else
      flash[:alert] = "更新が失敗しました！"
      redirect_to root_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "削除が完了しました！"
      redirect_to root_path
    else
      flash[:alert] = "削除が失敗しました！"
      redirect_to root_path
    end

  end



  private
  def item_params
    params.require(:item).permit(:name, :category, :image)
  end

end
