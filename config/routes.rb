Rails.application.routes.draw do

  devise_for :users
  resources :alunos

  get 'welcome/index'
  root 'welcome#index'

  # namespace :api do
  #   namespace :v1 do
  #     resources :login, param: :login
  #   end
  # end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
      resources :alunos, only: [:index, :create, :show, :update, :destroy]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
