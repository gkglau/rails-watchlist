Rails.application.routes.draw do
  # [X] - As a user, I can see all my lists
  # [X] - As a user, I can create a list
  # [X] - As a user, I can see the details of a list
  # [ ] - As a user, I can bookmark a movie inside a list
  # [ ] - As a user, I can destroy a bookmark
  root to: "lists#index"
  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create ]
  end
end
