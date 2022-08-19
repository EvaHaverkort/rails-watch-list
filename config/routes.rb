Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "movies", to: "/movies#index"
  # get "/lists", to: "lists#index"
  # get "/lists/new", to: "lists#new"
  # post "/lists", to: "lists#create"
  # get "/lists/:id", to: "lists#show", as: :list
  # get "/lists/:list_id/bookmarks/new", to: "bookmarks#new", as: :
  # post "lists/:list_id/bookmarks", to: "bookmarks#create"
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, except: [:destroy]
  end

  resources :bookmarks, only: :destroy

  # if you only have one you don't need the []

  # resources :bookmarks, only: :destroy same as:
  # delete "/bookmarks/:id(.:format)", to: "bookmarks#destroy"

# get    "/lists/:list_id/bookmarks(.:format)", to:"bookmarks#index"
# post   "/lists/:list_id/bookmarks(.:format)", to:"bookmarks#create"
# get    "/lists/:list_id/bookmarks/new(.:format)", to:"    bookmarks#new"
# get    "/lists/:list_id/bookmarks/:id/edit(.:format)", to:"bookmarks#edit"
# get    "/lists/:list_id/bookmarks/:id(.:format)", to:"      bookmarks#show"
# patch  "/lists/:list_id/bookmarks/:id(.:format)", to:"      bookmarks#update"
# put    "/lists/:list_id/bookmarks/:id(.:format)", to:"      bookmarks#update"
# delete "/lists/:list_id/bookmarks/:id(.:format)", to:"     bookmarks#destroy"
# get    "/lists(.:format)", to:"lists#index"
# post   "/lists(.:format)", to:"lists#create"
# get    "/lists/new(.:format)", to:"lists#new"
# get    "/lists/:id/edit(.:format)", to:"lists#edit"
# get    "/lists/:id(.:format)", to:"lists#show"
# patch  "/lists/:id(.:format)", to:"lists#update"
# put    "/lists/:id(.:format)", to:"lists#update"
# delete "/lists/:id(.:format)", to:"lists#destroy"

end
