Rails.application.routes.draw do
  # The Home page for DBAuth app
  root   'info_pages#home'
  get    'about',                to: 'info_pages#about'

  # Routes for Database credentials
  resources :db_cred, path: 'credentials'

end
