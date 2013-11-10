Myapp::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  get ':user' => 'user#process_file'
  devise_for :users
  resources :users
end