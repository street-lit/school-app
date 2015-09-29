Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :courses
  resources :schools

  root "teachers#index"
end
