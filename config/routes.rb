BraintreeTestRails::Application.routes.draw do
  #get "static_pages/home"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

  get 'client_token' => "braintree_tasks#client_token"
  post 'purchases' => "braintree_tasks#purchases"

end
