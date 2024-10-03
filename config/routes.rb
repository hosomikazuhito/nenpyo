Rails.application.routes.draw do
  root 'years#index'
  resources :years do
    collection do
      get 'age'
    end
  end
end