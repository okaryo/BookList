class ListsController < ApplicationController
  before_action :authenticate_user, {only: [:edit, :new, :update, :destroy, :create, :ensure_correct_user]}
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}
  
  def index
    @lists = List.all.order(created_at: :desc)
  end
  
  def show
    @list = List.find_by(id: params[:id])
    @user = @list.user
    @books = [
      {name: @list.book1, url: @list.book1_url},
      {name: @list.book2, url: @list.book2_url},
      {name: @list.book3, url: @list.book3_url},
      {name: @list.book4, url: @list.book4_url},
      {name: @list.book5, url: @list.book5_url}
    ]
  end
  
  def edit
    @list = List.find_by(id: params[:id])
  end
  
  def new
    @list = List.new
  end
  
  def update
    @list = List.find_by(id: params[:id])
    @list.name = params[:name]
    @list.book1 = params[:book1]
    @list.book2 = params[:book2]
    @list.book3 = params[:book3]
    @list.book4 = params[:book4]
    @list.book5 = params[:book5]
    @list.book1_url = params[:book1_url]
    @list.book2_url = params[:book2_url]
    @list.book3_url = params[:book3_url]
    @list.book4_url = params[:book4_url]
    @list.book5_url = params[:book5_url]
    if @list.save
      flash[:notice] = "リストを編集しました"
      redirect_to("/lists/index")
    else
      render("lists/edit")
    end
  end
  
  def create
    @list = List.new(
      name: params[:name],
      book1: params[:book1],
      book1_url: params[:book1_url],
      book2: params[:book2],
      book2_url: params[:book2_url],
      book3: params[:book3],
      book3_url: params[:book3_url],
      book4: params[:book4],
      book4_url: params[:book4_url],
      book5: params[:book5],
      book5_url: params[:book5_url],
      user_id: @current_user.id
    )
    if @list.save
      flash[:notice] = "リストを作成しました"
      redirect_to("/lists/index")
    else
      render("lists/new")
    end
  end
  
  def destroy
    @list = List.find_by(id: params[:id])
    @list.destroy
    flash[:notice] = "リストを削除しました"
    redirect_to("/lists/index")
  end
  
  def ensure_correct_user
    @list = List.find_by(id: params[:id])
    if @list.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/lists/index")
    end
  end
end