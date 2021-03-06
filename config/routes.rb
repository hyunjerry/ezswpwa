Rails.application.routes.draw do

  get 'main/buyerlist'

  get 'main/swipelist/:dininghall' => "main#swipelist"
  post 'sell' => "main#sell"

  get 'main/buyerlist'=> 'main#buyerlist'
  get 'main/buyerlist/:dininghall'=> 'main#buyerlist'

  get 'main/dininghall' => "main#dininghall"
  post 'create' => "main#create"

  get 'main/buyerinput/:swipe_id' => "main#buyerinput"

  post 'main/cancel/:swipe_id' => "main#cancel"

  post 'main/input/:swipe_id'=> "main#input"

##########################

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  get 'main/home'=> 'main#home'
  get 'main/landing'=> 'main#landing'
  get 'main/done'=> 'main#done'
  get 'main/wait'=> 'main#wait'



  root "main#landing"

  # posts controller
  get 'posts/new' => 'posts#new'
  get 'posts/create' => 'posts#create'
  post 'posts/destroy/:id' => 'posts#destroy'

  get 'posts/index' => 'posts#index'
  get 'posts/show/:id' => 'posts#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
