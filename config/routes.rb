=begin
RoR Route Config Sample
Copyright (c) 2018 Cybozu
Licensed under the MIT License
=end

Rails.application.routes.draw do
  get '/inquiries', to: 'inquiries#new'
  post '/inquiries', to: 'inquiries#create'
  resources :inquiries

  root 'inquiries#new'
end