Rails.application.routes.draw do
  resources :urls
  get '/s/:slug' => 'urls#short'
end
