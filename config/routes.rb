Rails.application.routes.draw do
  
  get 'user/show'

  get 'home/index'

  devise_for :admins
  get 'pages/how_to_write'

  get 'pages/Myblogs'

  devise_for :users
  resources :blogs
  resources :users
  
  get 'pages/signup'
  root 'home#index'
  
  get 'pages/home'

  get 'pages/contactus'

  get 'pages/about'
  
  get 'pages/show_detailed_blog'
  get 'user/index'
  
  


  
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
