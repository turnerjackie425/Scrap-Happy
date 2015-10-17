Rails.application.routes.draw do
  resources :page_attachments

  root "page_attachments#index"
end
