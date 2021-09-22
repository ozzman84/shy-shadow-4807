class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def destroy
  end
end
