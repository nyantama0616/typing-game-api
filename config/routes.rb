Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/words", to: "words#index"
  get "/kana_alphabet", to: "words#kana_alphabet"
end
