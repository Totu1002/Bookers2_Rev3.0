class RelationshipsController < ApplicationController
  #create
  def follow
    current_user.follow(params[:id])
    #redirect_to root_path
    redirect_back(fallback_location: root_path)
  end

  #destroy
  def unfollow
    current_user.unfollow(params[:id])
    #redirect_to root_path
    redirect_back(fallback_location: root_path)
  end
end
