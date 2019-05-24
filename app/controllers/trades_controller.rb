class TradesController < ApplicationController
  def history
    @trades = policy_scope(Trade).order(trade: :desc)
    if params[:search] && params[:search][:Trades_from].present?
      date_from = params[:search][:Trades_from].split.first.split("-")
      starting_date = Date.new(date_from[0].to_i, date_from[1].to_i, date_from[2].to_i)

      date_to = params[:search][:Trades_from].split.last.split("-")
      ending_date = Date.new(date_to[0].to_i, date_to[1].to_i, date_to[2].to_i)

      @trades = Trade.where(date: starting_date..ending_date)

    end
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
