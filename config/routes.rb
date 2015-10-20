Rails.application.routes.draw do
  devise_for :users
  resources :page_attachments

  root "page_attachments#index"
  
end
