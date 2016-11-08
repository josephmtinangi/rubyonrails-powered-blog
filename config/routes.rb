Rails.application.routes.draw do
  get 'categories/show'

  namespace :admin do
    get 'posts/index'
  end

  namespace :admin do
    get 'posts/show'
  end

  namespace :admin do
    get 'posts/new'
  end

  namespace :admin do
    get 'posts/edit'
  end

  namespace :admin do
    get 'posts/delete'
  end

  get 'posts/index'

  get 'posts/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
