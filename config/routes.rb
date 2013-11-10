Myapp::Application.routes.draw do
  get "Submit/submit_file"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  get 'Users/:id/user_files'
  get 'Users/:id/Submit/submit_file'
  get 'users/:id/Submit/submit_file'
  post 'Users/:id/Submit/submit_file' => 'Submit#submit_file'
  devise_for :users
  resources :users
end