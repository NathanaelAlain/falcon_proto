class TradesController < ApplicationController
  def history
    @trades = policy_scope(Trade)
  end

  def new
    @trade = Trade.new
    @part = Part.find(params[:part_id])
    authorize @trade
  end

  def create
    @trade = Trade.new(trade_params)
    authorize @trade
    if @trade.save
      redirect_to history_path, notice: "Checkout is created"
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
