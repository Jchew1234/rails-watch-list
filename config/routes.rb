Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # can see all the list 'lists#index'
  # can see details of a given list and its name 'lists#show#
  # create a new list 'lists#create' 'lists#new'
  root to: 'lists#index'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: [:destroy]
  # add a bookmark (movie/list pair) to an existing list  'bookmark#new' 'bookmark#create'
  # delete bookmark from a list 'bookmark#destroy'
end
