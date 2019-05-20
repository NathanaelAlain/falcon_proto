class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :seller, :address, :photo, :phone_number)
  end
end
