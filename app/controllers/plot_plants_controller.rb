class PlotPlantsController < ApplicationController
  def index
    @plants = Plot.find(params[:id]).plants
  end

  def destroy
  end
end
