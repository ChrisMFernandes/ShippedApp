Rails.application.routes.draw do
  devise_for :users
	root to: "home#index"
	resources :boats
	resources :jobs
	resources :boat_jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
