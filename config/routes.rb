Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :courses
  resources :schools

  root "schools#index"
end
