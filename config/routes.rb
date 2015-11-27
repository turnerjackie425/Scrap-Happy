Rails.application.routes.draw do
  devise_for :users
  
  resources :page_attachments do
    member do 
      put "like", to: "page_attachments#upvote"
    end
  end

  root "page_attachments#index"
end
