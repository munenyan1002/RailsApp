Rails.application.routes.draw do
  # peopleコントローラーへのアクセス
  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/show'
  get 'people/:id', to: 'people#show'


  get 'dengonban/index'
  post 'dengonban/index'
  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'helo/index'
  get 'helo', to: 'helo#index'
  get 'helo/other'
end
