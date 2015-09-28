class Admin::ItemsController < ApplicationController
  before_action :authenticate_site!

  def create
    @page = Page.find(params[:page_id])
    
    @item = @page.items.build(item_params)
    if@item.save
      flash[:success] = "作成しました"
    else
      flash[:errors] = "作成できませんでした"
    end
  end
  
  def update
    @page = Page.find(params[:page_id])
    
    if@item.update(item_params)
      flash[:success] = "編集しました"
    else
      flash[:errors] = "編集できませんでした"
    end
  end

  def destroy
    @item.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  def up_position
    @page = Page.find(params[:page_id])
    
    @item = Item.find(params[:id])
    @item.update_attributes(row_order_position: :up)
  end
  
  def down_position
    @page = Page.find(params[:page_id])
    
    @item = Item.find(params[:id])
    @item.update_attributes(row_order_position: :down)
  end
  
  private
  def item_params
    params.require(:item).permit(:type, :page_id, :title, :body, :movie, :image, :image_location, :row_order_position)
  end
  
end
