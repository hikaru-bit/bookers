Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # モデル名Book コントローラー名books
  root to: 'homes#top'
  get 'books' => 'books#index', as: 'books'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id' => 'books#edit', as: 'edit_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
