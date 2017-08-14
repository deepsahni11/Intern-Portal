Rails.application.routes.draw do
  devise_for :user_companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :internships
 resources :companies

 #authenticated :company do
#    root 'companies#index', as: :authenticated_root
#  end
 root 'internships#index'





end
