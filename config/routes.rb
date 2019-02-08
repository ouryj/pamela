Rails.application.routes.draw do
  
  resources :courses
  resources :cohorts 
  resources :students
  resources :instructors
  
  # get 'cohorts/index'
  # get 'cohorts/new'
  # get 'cohorts/show'
  # get 'cohorts/edit'
  # get 'courses/index'
  # get 'courses/new'
  # get 'courses/show'
  # get 'courses/edit'
  # get 'instructors/index'
  # get 'instructors/new'
  # get 'instructors/show'
  # get 'instructors/edit'
  # get 'students/index'
  # get 'students/new'
  # get 'students/show'
  # get 'students/edit'
  # get 'stuednts/index'
  # get 'stuednts/new'
  # get 'stuednts/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'students#index'
end
