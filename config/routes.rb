Rails.application.routes.draw do

  get "/new", to: "household_account_book#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
