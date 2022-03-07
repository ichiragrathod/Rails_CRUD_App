Rails.application.routes.draw do

  root "pages#home"
  get 'about', to:'pages#about'
  resources :employees
  get 'empdelete/:id', to:'employees#destroy', as: :empdelete
  #resources :employees, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end

# 
