Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :document_favoris
  resources :comments
  resources :document_images
  resources :document_histories
  resources :video_histories
  resources :videos
  resources :documents do
    member do
      put "like", to: "documents#upvote"
      put "dislike", to: "documents#downvote"
    end
  end
  resources :messages
  resources :administrators
  resources :institutes
  resources :users
  resource :sections

  resources :documents do
    resources :comments
  end

  devise_for :users , :path_prefix => 'devise' , 
  controllers: {  confirmations: 'confirmations' , :omniauth_callbacks => "users/omniauth_callbacks" ,registrations: 'registrations' }
  
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'home' => 'static_pages#home'
  get 'list' => 'static_pages#documents_list'
  get 'welcome_for_documents' => 'documents#welcome_for_documents'
  get 'user_documents' => 'documents#user_documents'
  # Change path for admin later
  get 'admin' => 'admin/dashboard#index'
  get 'het_el_kazi' => 'documents#het_el_kazi'
  get 'preferred_documents' => 'documents#preferred_documents'
  get 'payment' => 'users#payment'

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
end
