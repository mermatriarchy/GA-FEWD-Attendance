Rails.application.routes.draw do
  get '/enter', to: 'sessions#new'
  #create a new session
  post '/enter', to: 'sessions#create'
  #logout
  get '/logout', to: 'sessions#destroy'


  get 'class_attendees/new'
  #add class attendee info to the db
  post '/submit', to: 'class_attendees#create'

  get 'users/new'

  root to: 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
