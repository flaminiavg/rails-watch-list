# frozen_string_literal: true

Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmarks, only: [:create, :new, :delete]
  end

  resources :bookmarks, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
