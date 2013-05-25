Imptest::Application.routes.draw do

  match '/push' => 'sensors#push'

  resources :sensors

  root :to => 'pages#main'
  
end
