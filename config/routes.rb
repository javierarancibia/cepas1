Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :magazines
  resources :oenologists
  resources :strains
  resources :wines
  get 'fabricado', to: 'wine_strains#new', as: 'new_wine_strain'
  post 'wine_strain', to: 'wine_strains#create', as: 'wine_strain'
  get 'winestrains', to: 'wine_strains#index', as: 'wines_strains'


  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
