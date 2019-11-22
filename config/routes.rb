Rails.application.routes.draw do
  scope "(:locale)", locale: /en/ do
    root "static_pages#home"

    get "/home", to: "static_pages#home"
    get "/about", to: "static_pages#about"

    get "/doctor", to: "doctors#index"

    get "/signup", to: "patients#new"
    get "/signin", to: "sessions#new"
    post "/signin", to: "sessions#create"
    delete "/signout", to: "sessions#destroy"

    resources :patients
    resources :admin
    resources :doctors, only: %i(show edit new)
  end
end
