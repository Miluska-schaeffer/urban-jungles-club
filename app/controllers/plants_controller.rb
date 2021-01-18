class PlantsController < ApplicationController
  before_action :find_jungle, except: [ :edit, :update, :destroy]
  before_action :find_plant, only: [ :edit, :update, :show]

  # def index
  #   @plants = Plant.all
  # end

  # def show
  # end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.jungle = @jungle
    if @plant.save
      redirect_to jungle_path(@jungle), notice: 'plant was created!'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @plant.update(plant_params)

      redirect_to jungle_path(@plant.jungle_id), notice: 'plant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    jungle = @plant.jungle
    @plant.destroy
    redirect_to jungle_path(jungle), notice: 'plant was deleted'
  end

  private

  def find_jungle
    @jungle = Jungle.find(params[:jungle_id])
  end

  def plant_params
    params.require(:plant).permit(:name, :nickname)
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end


end

