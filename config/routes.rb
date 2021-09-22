Rails.application.routes.draw do
  get 'plants/index'
  get 'plants/destroy'
  get 'plot_plants/index'
  get 'plot_plants/destroy'
  get 'plots/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plots, only: [:index]
end
