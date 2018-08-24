class TracksController < ApplicationController

  http_basic_authenticate_with name: "user", password: "pass"

  def create
    @record = Record.find(params[:record_id])
    @track = @record.tracks.create(track_params)
    redirect_to record_path(@record)
  end

  def destroy
    @record = Record.find(params[:record_id])
    @track = @record.tracks.find(params[:id])
    @track.destroy
    redirect_to record_path(@record)
  end

  private

  def track_params
    params.require(:track).permit(:title)
  end

end
