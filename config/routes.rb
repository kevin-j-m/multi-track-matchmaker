Rails.application.routes.draw do
  resources :conferences, only: [:index, :show, :new, :create, :edit, :update] do
    resources :presentations, only: [:show]
  end
end
