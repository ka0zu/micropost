class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    
    micropost= Micropost.find(favorite_params[:micropost_id])
    
    current_user.addfavorite(micropost)
    flash[:success] = 'お気に入りに追加しました。' 

    redirect_to root_path
  end

  def destroy
    current_user.detachfavorite(microposts)    
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_path
  end
  
  def list
  end
  
    private
  
  def favorite_params
    params.require(:favorite).permit(:micropost_id)
  end
  
end
