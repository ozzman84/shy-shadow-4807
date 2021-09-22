require 'rails_helper'

describe 'Plots Index Page' do
  before :each do
    @turing_garden = Garden.create!(name: 'Turing Community Garden', organic: true)
    @plot1 = @turing_garden.plots.create!(number: 26, size: "Small", direction: "West")
    @plot2 = @turing_garden.plots.create!(number: 25, size: "Large", direction: "East")

    @plot1.plot_plants << @plant1 = Plant.create!(name: 'plant1', description: 'Green', days_to_harvest: 3)
    @plot1.plot_plants << @plant2 = Plant.create!(name: 'plant2', description: 'Red', days_to_harvest: 5)
    @plot2.plot_plants << @plant3 = Plant.create!(name: 'plant3', description: 'Blue', days_to_harvest: 13)
  end

  it 'lists plot attributes & plants' do
    visit('/plots')

    Plot.all.each do |plot|
      expect(page).to have_content(plot.number)
      expect(page).to have_content(plot.plants)
    end
  end
end
