class Api::PlacesController < ApplicationController
  def index
    render 'index.json.jb'
  end
end
