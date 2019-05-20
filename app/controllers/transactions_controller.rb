class TransactionsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @transaction = Transaction.new
    @parts = Part.all
  end

  def create
    @user = User.find(params[:user_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.user = @user
    if @transaction.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to user_path(@transaction.user)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :part_id, :date)
  end
end
