Myapp::Application.routes.draw do
  get "Submit/submit_file"

  authenticated :user do
    root :to => 'home#index'
  end
  #root :to => "home#index"
  root :to => "submit#view_files"
  get 'users/:id/view' => 'Submit#view_files'
  get 'upload/create/' => 'Upload#create'
  get 'users/:id/user_files'
  get 'Users/:id/user_files'
  get 'users/:id/Submit/submit'
  get 'Users/:id/Submit/submit'
  post 'users/:id/Submit/submit' => 'Submit#submit_file'
  post 'Users/:id/Submit/submit' => 'Submit#submit_file'
  devise_for :users
  resources :users
end
