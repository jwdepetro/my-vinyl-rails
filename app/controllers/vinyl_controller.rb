class VinylController < ApplicationController

  def index
    @vinyls = Vinyl.all
  end

  def show
    @vinyl = Vinyl.find(params[:id])
  end

  def new
    @vinyl = Vinyl.new
  end

  def edit
    @vinyl = Vinyl.find(params[:id])
  end

  def update
    @vinyl = Vinyl.find(params[:id])
    if @vinyl.update(vinyl_params)
      redirect_to @vinyl
    else
      render 'edit'
    end
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)
    if @vinyl.save
      redirect_to @vinyl
    else
      render 'new'
    end
  end

  def destroy
    @vinyl = Vinyl.find(params[:id])
    @vinyl.destroy
    redirect_to vinyl_index_path
  end

  private

  def vinyl_params
    params.require(:vinyl).permit(:artist, :album, :year_released, :year_printed, :condition)
  end

end
