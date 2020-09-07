class RelationshipsController < ApplicationController
  #follow
  def create
    current_user.follow(params[:id])
    #redirect_to root_path
    redirect_back(fallback_location: root_path)
  end

  #unfollow
  def destroy
    current_user.unfollow(params[:id])
    #redirect_to root_path
    redirect_back(fallback_location: root_path)
  end
end
