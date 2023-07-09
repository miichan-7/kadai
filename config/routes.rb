Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get '/' => 'homes#top'
  resources :books
  get 'books/:id/edit' => 'books#edit', as:'edit_list'
  delete '/books/:id', to: 'books#destroy', as: 'destroy_book'
end
