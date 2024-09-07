Rails.application.routes.draw do
  root 'calculator#index'
  get 'calculator/calculate'
end
