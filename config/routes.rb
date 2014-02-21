Hogwarts::Application.routes.draw do
  
  resources :houses, only: [:index, :show]
  get 'students' => 'students#index'
  get 'students' => 'students#create'

  root to: 'welcome#index'
end