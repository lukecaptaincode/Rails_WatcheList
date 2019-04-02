Rails.application.routes.draw do
  resources :movieobjects
  resources :gameobjects
  resources :bookobjects
  resources :mediaobjects
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'
  match '/mediasearcher', to: 'mediasearcher#search', via: 'post'
  match '/addmedia', to: 'addmedia#addmedia', via: 'post'
  match '/addmedia', to: 'addmedia#watch', via: 'post'
end
