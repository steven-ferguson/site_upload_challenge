Rails.application.routes.draw do
  resources :sites, only: [:create], defaults: { format: :json }
end
