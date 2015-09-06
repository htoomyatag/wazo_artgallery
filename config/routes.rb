Rails.application.routes.draw do
  resources :orders

  devise_for :admins, :controllers => {:sessions => "admins/sessions", :registrations => "admins/registrations"}

  resources :admins

  resources :paint_types

  resources :sizes

  resources :exhibitions

  resources :homes

  

  resources :photos

  resources :paints

  resources :artists

  root 'homes#home'
  get 'contact' => 'homes#contact'
  match 'contact',     to: 'homes#contact', via: 'get'
  get 'art_gallery' => 'homes#art_gallery'
  get 'artist_detail' => 'homes#artist'
  get 'photo_gallery' => 'homes#photo_gallery'
  get 'exhibition' => 'homes#exhibition'
  get 'terms_and_conditions' => 'homes#terms_and_conditions'
  get 'search' => 'homes#art_gallery'
  get 'search_photo' => 'homes#photo_gallery'
  get "artist_profile/:id" => "homes#artist_profile"
  get "artist_artwork" => "homes#artist_artwork"
  



 



 

 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
