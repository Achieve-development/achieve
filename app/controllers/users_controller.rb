class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(id_params[:id])
  end
  
  def edit
    @user = User.find(current_user.id)
  end
  
  def update
    @user = User.find(current_user.id)
    @user.update(update_params)
  end
  
  private
    def id_params
      params.permit(:id)
    end
    
    def update_params
      params.require(:user).permit(:name, :profile)
    end
end
