Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects
  resources :divisions do
    resources :employees
  end
end
