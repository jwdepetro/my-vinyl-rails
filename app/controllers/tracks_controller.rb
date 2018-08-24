class TracksController < ApplicationController

  def create
    @record = Record.find(params[:record_id])
    @track = @record.tracks.create(track_params)
    redirect_to record_path(@record)
  end

  private

  def track_params
    params.require(:track).permit(:title)
  end

end
