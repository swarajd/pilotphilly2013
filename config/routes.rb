Myapp::Application.routes.draw do
  get "Submit/submit_file"

  authenticated :user do
    root :to => 'home#index'
  end
  #root :to => "home#index"
  root :to => "submit#submit"
  get 'users/:id/view' => 'Submit#view_files'
  get 'users/:id/user_files'
  get 'Users/:id/user_files'
  get 'users/:id/Submit/submit_file'
  get 'Users/:id/Submit/submit_file'
  post 'users/:id/Submit/submit_file' => 'Submit#submit_file'
  post 'Users/:id/Submit/submit_file' => 'Submit#submit_file'
  devise_for :users
  resources :users
end