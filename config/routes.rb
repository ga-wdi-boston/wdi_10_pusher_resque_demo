Rails.application.routes.draw do
  root to: 'tweets#index'
  post '/tweets/search', to: 'tweets#search', as: 'search_tweets'
end
