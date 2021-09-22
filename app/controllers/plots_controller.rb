class PlotsController < ApplicationController
  def index
    @plots = Plot.all
    @plot_plants = Plot.find(params[:id])plot_plants
  end
end
