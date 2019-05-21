class PartsController < ApplicationController
  def index
    @parts = Part.all
  end

  def show
    @part = Part.find(params[:id])
    @transaction = Transaction.new
    # @user = User.find(params[:user_id])
    # @part.user = @user
  end

  def new
    @part = Part.new
  end

  def update
    @part = Part.find(params[:id])
    if @part.update(part_parms)
      redirect_to part_path(@part)
    else
      render :new
    end
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to part_path(@part)
    else
      render :new
    end
  end

  private

  def part_params
    params.require(:part).permit(:name, :description, :part_type_id, :picture_url, :sold, :user_id, :price)
  end
end
