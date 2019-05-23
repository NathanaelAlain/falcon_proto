class TradesController < ApplicationController

  def history
    @trades = policy_scope(Trade)
    # raise
    # user_id = @trade.user_id
    # @user = Trade.find(user_id)
  end

  def new
    @user = User.find(params[:user_id])
    @trade = Trade.new
    @parts = Part.all
  end

  def create
    @user = User.find(params[:user_id])
    @trade = Trade.new(trade_params)
    @trade.user = @user
    if @trade.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy
    redirect_to user_path(@trade.user)
  end

  private

  def trade_params
    params.require(:trade).permit(:user_id, :part_id, :date)
  end
end
