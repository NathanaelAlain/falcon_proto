class PartsController < ApplicationController
  before_action :set_part, only: [:show, :edit, :update, :destroy]

  def show
    @trade = Trade.new
    user_id = @part.user_id
    @user = User.find(user_id)
    # @part.user = @user

  end

  def index
    @parts = policy_scope(Part).order(created_at: :desc)
  end

  def new
    @part = Part.new
    authorize @part
  end

  def update
    if @part.update(part_params)
      redirect_to part_path(@part)
    else
      render :edit
    end
  end

  def edit
  end

  def create
    @part = Part.new(part_params)
    authorize @part
    if @part.save
      redirect_to part_path(@part), notice: 'Part was succesfully created'
    else
      render :new
    end
  end

  def destroy
    @part.destroy
    redirect_to parts_path
  end

  private

  def part_params
    params.require(:part).permit(:name, :description, :part_type_id, :photo, :sold, :user_id, :price)
  end

  def set_part
    @part = Part.find(params[:id])
    authorize @part

  end
end
