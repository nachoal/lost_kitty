Rails.application.routes.draw do
  # Root
  root to: 'pets#index'

  get 'pets/index'
  get 'pets/show'
  get 'pets/edit'
  get 'pets/new'
  get 'pets', to: 'pets#index'
  get 'pets/new', to: 'pets#new'
  post 'pets', to: 'pets#create'
  get 'pets/:id', to: 'pets#show', as: 'pet'
  get 'pets/:id/edit', to: 'pets#edit', as: 'edit_pet'
  patch 'pets/:id', to: 'pets#update'
  delete 'pets/:id', to: 'pets#destroy', as: 'pet_destroy'
end
