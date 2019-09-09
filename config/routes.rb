Rails.application.routes.draw do

  root 'static_pages#new'
  resources :incomes do
    resources :expenses ,only: [:new, :create]
  end

  get "expenses/index", to: "expenses#index"

  delete "expenses/:id", to: "expenses#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
