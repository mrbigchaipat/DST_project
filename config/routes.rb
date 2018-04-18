Rails.application.routes.draw do
  get 'nn/result'

  get 'dt/result'

  get 'svm/result'

  get 'lr/result'

  get 'dashboard/logistic_regression'

  get 'dashboard/non_potential'

  get 'dashboard/enquiry'
  post 'dashboard/query'

  devise_for :users
  get 'dashboard/index'
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
