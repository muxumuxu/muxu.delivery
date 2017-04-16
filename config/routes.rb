Rails.application.routes.draw do
  root to: "projects#index"

  resources :projects do
    resources :milestones
  end

  devise_for :users
end
