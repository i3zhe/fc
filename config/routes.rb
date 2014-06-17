Fc::Application.routes.draw do
  
  devise_for :users

  resources :orders
  resources :lotteries

  root :to => 'high_voltage/pages#show', :id => 'welcome'
end
