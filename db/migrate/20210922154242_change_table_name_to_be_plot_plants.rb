class ChangeTableNameToBePlotPlants < ActiveRecord::Migration[5.2]
  def change
    rename_table :plots_plants, :plot_plants
  end
end
