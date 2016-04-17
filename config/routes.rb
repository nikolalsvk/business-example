Rails.application.routes.draw do

  root 'welcome#index'

  resources :places
  resources :countries

end
