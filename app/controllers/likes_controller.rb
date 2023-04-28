class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = Like.new(comment_id: params[:comment_id], user_id: current_user.id)
    @like.save
    redirect_back fallback_location: root_path
  end

  def destroy
    @like = Like.where(comment_id: params[:comment_id], user_id: current_user.id).first
    @like.destroy
    redirect_back fallback_location: root_path
  end
end