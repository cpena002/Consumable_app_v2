Rails.application.routes.draw do

  resources :profiles

  # resources :reviews
  #root 'reviews#index'
  resources :reviews do
    member do
      get 'map_location'
    end
  end

  devise_for :users

  get 'search/search_by'



  # get 'search/cuisine'

  # Set landing page
  root 'landing_page#index'

  get 'landing_page/login'

  get 'landing_page/signup'

  get 'users/sign_in'

  get 'users/sign_up'

end
