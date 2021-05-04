Rails.application.routes.draw do
  root to: 'homes#top'  
  resources :books, only: [:show, :index, :new, :create, :edit, :destroy]
end
