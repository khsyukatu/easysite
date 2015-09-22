class Admin::MembersController < ApplicationController
  before_action :authenticate_site!
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  
  def index
    @members = Member.where(site_id: current_site.id)
  end
  
  def show
  end
  
  def new
  	@member = current_site.members.build
  end

  def create
    @member = current_site.members.build(member_params)
    if@member.save
      flash[:success] = "作成しました"
      redirect_to admin_members_path
    else
      flash[:errors] = "作成できませんでした"
      render :new
    end
  end
  
  def update
    if@member.update(member_params)
      flash[:success] = "編集しました"
      redirect_to admin_members_path
    else
      flash[:errors] = "編集できませんでした"
      render :new
    end
  end
  

  def edit
  end

  def destroy
    @member.destroy
    flash[:success] = "削除しました"
    redirect_to admin_root_path
  end
  
  private
  def set_member
    @member = Member.where(site_id: current_site.id).find(params[:id])
  end
  
  def member_params
    params.require(:member).permit(:image, :name, :description, :site_id)
  end
end
