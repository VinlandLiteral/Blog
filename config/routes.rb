Rails.application.routes.draw do
  root 'articles#new'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
