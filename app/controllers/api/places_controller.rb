class Api::PlacesController < ApplicationController
  def index
    @places = Place.all
    render 'index.json.jb'
  end

  def create
    @place = Place.new(
      name: params[:name],
      address: params[:address],

    )
    @place.save
    render 'show.json.jb'
  end

  def update
    @place = Place.find_by(id: params[:id])
    @place.name = params[:name] || @place.name
    @place.address = params[:address] || @place.address
    @place.save
    render 'show.json.jb'
  end
end
