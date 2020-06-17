Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: %i[index show new create]
  #OR, resources :articles, only: [:index, :show, :new, :create, :edit, :update] works too, but lines 5 and 6 would need to be removed. 
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
end