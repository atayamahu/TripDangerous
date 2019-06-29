Rails.application.routes.draw do
  get 'troubles/subregion_options' => 'troubles#subregion_options'
  get 'troubles/top'
  get 'troubles/country'
  get 'troubles/region'
  get 'troubles/index'
  get 'troubles/new'
  post 'troubles/new' => 'troubles#create'
  get 'troubles/create'
  get 'troubles/:country', to: 'troubles#region'
  get 'troubles/:country/:region' => 'troubles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
