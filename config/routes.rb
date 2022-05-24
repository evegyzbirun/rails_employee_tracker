Rails.application.routes.draw do
  resources :projects
  resources :divisions do
    resources :employees
  end
end
