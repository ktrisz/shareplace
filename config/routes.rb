  Rails.application.routes.draw do
  devise_for :users
    root 'shareplaces#index'
    # get 'shareplaces'     => 'shareplaces#index'
    # get 'shareplaces/new' => 'shareplaces#new'
    # post 'shareplaces'    => 'shareplaces#create'
    resources :shareplaces do
      collection do
        get :search
        get :area_search
      end

      resources :posts do
        resources :comments, only: [:create, :new]
      end
      # routingのネストをしてるのでmooovi
    end

    get "introduction" => 'tops#introduction'
    get "guidance"  => 'tops#guidance'
    get "rules" => 'tops#rules'
    get "information" => 'tops#information'
  end



