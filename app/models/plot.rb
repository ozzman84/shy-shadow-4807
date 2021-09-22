class Plot < ApplicationRecord
  belongs_to :garden
  has_many :plants_plot
  has_many :plants, through: :plants_plot
end
