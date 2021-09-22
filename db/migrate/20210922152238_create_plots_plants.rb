class CreatePlotsPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plots_plants do |t|
      t.references :plot, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
