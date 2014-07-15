Rails.application.routes.draw do
  resources :blogs
  root 'blogs#index'
  get 'links', to: 'blogs#links'
  get 'contactus', to: 'blogs#contactus'
  get 'upload', to: 'blogs#upload'
end
