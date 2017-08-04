Rails.application.routes.draw do
  devise_for :users, :path => '',
                    :path_names => { :sign_in => 'Login', :sign_out => 'Logout', :edit => 'Profile'},
                    :controllers => {:registrations => 'registrations'}
  root 'pages#home'
  resources :users, only: [:show]
  resources :rooms
  resources :photos
end
