Rails.application.routes.draw do
  resources :lectures
  resources :courses
  resources :lectures do
        put "like" =>"lectures#like"
        put "dislike" =>"lectures#dislike"
        post "spam"  =>"lectures#spam"
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'home#index'
  mount Ckeditor::Engine => '/ckeditor'
  mount Commontator::Engine => '/commontator'
end
