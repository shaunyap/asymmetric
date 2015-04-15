Rails.application.routes.draw do
  devise_for :admins
  authenticate :admin do
    resources :projects, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :projects, only: [:index, :show]

  root						   'static_pages#index'
  get 'projects' 			=> 'projects#index'
  get 'belief'              => 'static_pages#belief'
  get 'admin'               => 'admin#dashboard'
  get 'signin'				=> 'admins#sign_in'
end
