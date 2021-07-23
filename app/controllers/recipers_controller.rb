class RecipersController < ApplicationController
  before_action :find_reciper, only: [:edit, :update, :destroy]

  def index
    @recipers = Reciper.all
  end
  
  def new
    @reciper = Reciper.new
  end

  def create
    @reciper = Reciper.new(reciper_params)

    if @reciper.save
      redirect_to recipers_path, notice: '食譜已新增'
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @reciper.update(reciper_params)
      redirect_to recipers_path, notice: '食譜已修改'
    else 
      render :edit
    end
  end

  def destroy
    @reciper.destroy
    redirect_to recipers_path, notice: '食譜已刪除'
  end

  private

  def reciper_params
    params.require(:reciper).permit(:title, :content)
  end

  def find_reciper
    @reciper = Reciper.find(params[:id])
  end
end
