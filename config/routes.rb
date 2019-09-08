Rails.application.routes.draw do

  resources :incomes do
    resources :expenses ,only: [:new, :create]
  end

  get "expense/index", to: "expenses#index"

  delete "expenses/:id", to: "expenses#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
