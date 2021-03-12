Rails.application.routes.draw do
  resources :transactions
  root "articles#index"
  resources :articles, only: [:index] do
    post :do_save, on: :collection
    get :get_save, on: :collection
  end


  devise_for :users
end
