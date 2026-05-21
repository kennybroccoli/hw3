class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(
      title: params[:entry][:title],
      description: params[:entry][:description],
      occurred_on: params[:entry][:occurred_on],
      place_id: params[:entry][:place_id]
    )
    @entry.save
    redirect_to place_path(@entry.place)
  end
end