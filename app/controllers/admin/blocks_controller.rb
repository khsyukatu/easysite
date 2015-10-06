class Admin::BlocksController < ApplicationController
  before_action :authenticate_site!
  before_action :set_block, only: [:show, :edit, :update, :destroy]
  
  def index
    @blocks = Block.where(site_id: current_site.id)
  end
  
  def show
  end
  
  def new
  	@block = current_site.blocks.build
  end

  def create
    @block = current_site.blocks.build(block_params)
    if@block.save
      flash[:success] = "作成しました"
      redirect_to admin_blocks_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@block.update(block_params)
      flash[:success] = "編集しました"
      redirect_to admin_blocks_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
    @cells = @block.cells
  end

  def destroy
    @block.destroy
    flash[:success] = "削除しました"
    redirect_to admin_blocks_path
  end
  
  private
  def set_block
    @block = Block.where(site_id: current_site.id).find(params[:id])
  end
  
  def block_params
    params.require(:block).permit(:title, :site_id, cells_attributes: [:id, :block_id, :title, :body, :_destroy])
  end
end
