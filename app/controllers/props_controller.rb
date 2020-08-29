class PropsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index]
  def index
    @props = Prop.all
  end

  def show
    @prop = Prop.find(params[:id])
  end

  def new
    @prop = Prop.new 
  end

  def edit
    @prop = Prop.find(params[:id])
    if @prop.user != current_user
        redirect_to props_path, alert: "不正なアクセスです。"
    end
  end

  def create
    @prop = current_user.props.build(prop_params)
    if @prop.save
      redirect_to prop_path(@prop), notice: "プロップを投稿しました。"
    else
      render :new
    end
  end

  def update
    @prop = Prop.find(params[:id])
    if @prop.update(prop_params)
      redirect_to prop_path(@prop), notice: "プロップを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    prop = Prop.find(params[:id])
    prop.destroy
    redirect_to props_path(prop.user), notice: "プロップを削除しました。"
  end

  private
  def prop_params
    params.require(:prop).permit(:title, :body, :image)
  end

end
