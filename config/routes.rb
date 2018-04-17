Rails.application.routes.draw do
  get 'nn/result'

  get 'dt/result'

  get 'svm/result'

  get 'lr/result'

  devise_for :users
  get 'dashboard/index'
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
