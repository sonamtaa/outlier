# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, skip: :sessions

  post '/graphql', to: 'graphql#execute'
end
