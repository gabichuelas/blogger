Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/articles', to: 'articles#index'
  get '/articles/new', to: 'articles#new'
  post '/articles', to: 'articles#create'
  get '/articles/:id/edit', to: 'articles#edit'
  get '/articles/:id', to: 'articles#show'
  patch '/articles/:id', to: 'articles#update'
  put '/articles/:id', to: 'articles#update'
  delete '/articles/:id', to: 'articles#destroy'
end
