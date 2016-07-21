Rails.application.routes.draw do
    
    root "users#index"
    
    resources :users do
        resources :products
    end
    
end
