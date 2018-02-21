Rails.application.routes.draw do
  root  'welcome#index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'posts/new' => 'posts#new', as:'new_post'
  get 'posts' => 'posts#index', as: 'posts'
  post 'posts' => 'posts#create'
  get "/posts/:id" => 'posts#show', as: 'post'
  delete 'posts/:id' => 'posts#destroy'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch 'posts/:id'  => 'posts#update'

get 'users/new' => 'users#new', as: 'new_user'
get 'users/:id' => 'users#show', as: 'user'
get 'users' => 'users#index'
post 'users' => 'users#create'
get 'users/:id/edit' => 'users#edit', as: 'edit_user'
delete 'users/:id/' => 'users#destroy'
patch 'users/:id'  => 'users#update'
end
