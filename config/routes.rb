Rails.application.routes.draw do

  resources :portfolios, except: [:show]

  get 'angular-items', to: 'portfolios#angular'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs

  get 'blog/:id', to: 'blog#show', as: 'blog_show'

  root to: 'pages#home'

end
