Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get '2' => 'home#index2' # => HomeController.new.index
  get '3' => 'home#show'
  get 'post/:word' => 'home#post'
  get 'codeschools/:id' => 'code_schools#show', as: :code_school
  resources :users
  get 'logout' => 'home#logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
