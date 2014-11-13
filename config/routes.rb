Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  root 'employees#index'

  get 'example' => 'example#index'

  namespace :api do
    resources :employees, defaults: { format: :json }
  end
end
