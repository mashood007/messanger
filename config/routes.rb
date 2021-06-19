Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  get 'home/index'
  root 'home#index'
  resources :messages do
    collection do
      get :send_index
      get :notify
    end
  end
end
