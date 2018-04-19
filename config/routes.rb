  Rails.application.routes.draw do
    root 'shareplaces#index'
    # get 'shareplaces'     => 'shareplaces#index'
    # get 'shareplaces/new' => 'shareplaces#new'
    # post 'shareplaces'    => 'shareplaces#create'
    resources :shareplaces do
      collection do
        get :search
      end

      resources :posts
      # routingのネストをしてるのでmooovi
    end

    get "introduction" => 'tops#introduction'
    get "guidance"  => 'tops#guidance'
    get "rules" => 'tops#rules'
    get "information" => 'tops#information'
  end



