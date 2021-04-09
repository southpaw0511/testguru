Rails.application.routes.draw do

  resources :tests do
    resources :questions, shallow: true, only: :index
  end
  
end
