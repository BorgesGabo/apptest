Rails.application.routes.draw do
  resources :categories
  resources :expenses
  resources :aggression_details
  resources :people
  resources :perpetrators
  resources :type_of_aggressions
  resources :attention_centers
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
