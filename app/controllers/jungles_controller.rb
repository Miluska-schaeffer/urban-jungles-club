class JunglesController < ApplicationController
  before_action :find_jungle, only: [ :show, :edit, :update, :destroy ]
  def index
    @jungles = Jungle.all
  end

  def show
  end

  def new
    @jungle = Jungle.new
  end


  def create
    @jungle = Jungle.new(jungle_params)
    if  @jungle.save
      redirect_to @jungle, notice: 'jungle was created'
    else
      render :new
    end
  end

  d

  end

  def destroy
  end

  private
  def find_jungle
    @jungle = Jungle.find(params[:id])
  end

  def jungle_params
    params.require(:jungle).permit(:name, :banner_url)
  end

end

