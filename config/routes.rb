Rails.application.routes.draw do
  root "pages#home"

  devise_for :admin, controllers: {
    sessions:      'admin/sessions',
    registrations: 'admin/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'pages/users', to: 'pages#users', as: 'users'
  get 'pages/admin', to: 'pages#admin', as: 'admin'
end
