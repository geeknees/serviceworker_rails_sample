Rails.application.routes.draw do
  get 'page/home'
  resources 'entries', only: %i(index)
  namespace :api do
    resources :entries, only: %i(show)
  end

  root to: 'page#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
