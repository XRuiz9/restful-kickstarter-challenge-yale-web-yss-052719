Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'projects', to: 'projects#index'
  get 'projects/new', to: 'projects#new'
  get 'projects/:id', to: 'projects#show', as: 'project'
  post 'projects', to: 'projects#create'
  get 'projects/:id/edit', to: 'projects#edit'
  patch 'projects/:id', to: 'projects#update'
  delete 'projects/:id', to: 'projects#destroy'
end
