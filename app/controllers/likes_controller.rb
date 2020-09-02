class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(prop_id: params[:prop_id])
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    @prop = Prop.find(params[:prop_id])
    @like = current_user.likes.find_by(prop_id: @prop.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end  
end
