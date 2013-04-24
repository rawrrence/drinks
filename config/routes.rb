Drinks::Application.routes.draw do
  match '/orders/dispense_all' => 'orders#dispense_all'

  resources :ingredients


  resources :chambers


  resources :orders do
    get :dispense
    get :dispense_all
  end


  match 'home' => 'home#index', :as => :home
  match 'about' => 'home#about', :as => :about
  match 'contact' => 'home#contact', :as => :contact
  match '/orders/:id/dispense' => 'orders#dispense'

  root :to => 'home#index'
end
