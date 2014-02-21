Hogwarts::Application.routes.draw do
  
  get 'houses' => 'houses#index'
  get 'students' => 'students#index'
  get 'students' => 'students#create'

  root to: 'welcome#index'
end