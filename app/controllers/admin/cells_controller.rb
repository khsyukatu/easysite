class Admin::CellsController < ApplicationController
  before_action :authenticate_site!
  
  def create
    @block = Block.find(params[:block_id])
    @cells = @block.cells
    @cell = @block.cells.build(cell_params)
    
    if @cell.save
      flash[:success] = "作成しました"
    else
      flash[:errors] = "作成できませんでした"
    end
  end
  
  def update
    @block = Block.find(params[:block_id])
    @cells = @block.cells
    @cell = Cell.find(params[:id])
    
    if @cell.update(cell_params)
      flash[:success] = "編集しました"
    else
      flash[:errors] = "編集できませんでした"
    end
  end
  
  def destroy
    @block = Block.find(params[:id])
    @cells = @block.cells
    
    @cell = Cell.find(params[:id])
    @cell.destroy
    flash[:success] = "削除しました"
  end
  
  private
  def cell_params
    params.require(:cell).permit(:title, :body, :block_id)
  end
end
