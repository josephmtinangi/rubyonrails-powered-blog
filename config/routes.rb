Rails.application.routes.draw do
  get 'contacts/new'

  get 'about/index'

  namespace :admin do
    get 'sessions/new'
  end

  namespace :admin do
    get 'sessions/create'
  end

  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    get 'users/show'
  end

  namespace :admin do
    get 'users/new'
  end

  namespace :admin do
    get 'users/edit'
  end

  namespace :admin do
    get 'users/delete'
  end

  namespace :admin do
    get 'comments/delete'
  end

  get 'comments/new'

  namespace :admin do
    get 'categories/index'
  end

  namespace :admin do
    get 'categories/show'
  end

  namespace :admin do
    get 'categories/new'
  end

  namespace :admin do
    get 'categories/edit'
  end

  namespace :admin do
    get 'categories/delete'
  end

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
