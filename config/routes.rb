Rails.application. routes.draw do
  get '/' => 'homes#top'
  get 'books/top' => 'books#top'
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/show/:id' => 'books#show'
  get 'books/edit' => 'books#edit'

  patch 'books/:id' =>'books#update'
  delete 'books/:id' => 'books#destroy'
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
