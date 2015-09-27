class Admin::ItemtextsController < ApplicationController
  before_action :authenticate_site!

  def create
    @page = Page.find(params[:page_id])
    @item = @page.items.build(itemtext_params)
    if@item.save
      flash[:success] = "作成しました"
    else
      flash[:errors] = "作成できませんでした"
    end
  end
  
  def update
    if@item.update(itemtext_params)
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
  
  private
  def itemtext_params
    params.require(:itemtext).permit(:type, :page_id, :title, :body, :movie, :image, :image_location)
  end
end
