class JunglesController < ApplicationController
  before_action :find_jungle, only: [:show, :edit, :update, :destroy]

  def index
    @jungles = Jungle.all.limit(12)

    @markers = @jungles.geocoded.map do |jungle|
      {
        lat: jungle.latitude,
        lng: jungle.longitude,
        infowindow: render_to_string(partial: "info_window", locals: { jungle: jungle})
      }
    end
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
