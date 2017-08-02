Rails.application.routes.draw do
  devise_for :users, :path => '',
                    :path_names => { :sign_in => 'Login', :sign_out => 'Logout', :edit => 'Profile'}
  root 'pages#home'
  resources :users, only: [:show]
end
