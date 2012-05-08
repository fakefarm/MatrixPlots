MatrixPlots::Application.routes.draw do

root to: 'plots#index'

resources :plots

end
