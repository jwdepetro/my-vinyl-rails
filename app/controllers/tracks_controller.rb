class TracksController < ApplicationController

  def create
    @vinyl = Vinyl.find(params[:vinyl_id])
    @track = @vinyl.tracks.create(track_params)
    redirect_to vinyl_path(@vinyl)
  end

  private

  def track_params
    params.require(:track).permit(:title)
  end

end
