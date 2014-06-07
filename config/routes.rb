Rails.application.routes.draw do
  root 'welcome#index'
  delete '/logout' => 'sessions#destroy', :as => 'user_logout'
  get '/login' => 'sessions#new', :as => 'user_login'

  resources 'users'

  resources 'sessions'

  resources 'bills'

  resources 'events'

  post '/chores/:id/participate' => "chores#participate", :as => 'chore_participation'
  
  resources 'chores'
  
end
