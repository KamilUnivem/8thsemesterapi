Rails.application.routes.draw do

  resources :alunos
  get 'welcome/index'
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :login, param: :login
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
