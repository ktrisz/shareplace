  Rails.application.routes.draw do
    root 'shareplaces#index'
    # get 'shareplaces'     => 'shareplaces#index'
    # get 'shareplaces/new' => 'shareplaces#new'
    # post 'shareplaces'    => 'shareplaces#create'
    resources :shareplaces do
      resources :posts
      # routingのネストをしてるのでmooovi
    end
  end



