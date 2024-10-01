Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'lists/new'
  get 'lists' => 'lists#index'
  post 'lists' => 'lists#create'
  get 'lists/:id' => 'lists#show', as: 'list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
