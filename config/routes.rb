Myapp::Application.routes.draw do
  get "submit/submit_file"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  get 'users/:id/submit/submit_file' => 'submit#submit_file'
  devise_for :users
  resources :users
end