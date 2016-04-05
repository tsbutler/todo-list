Rails.application.routes.draw do
  devise_for :users
  get "tasks/new" => "tasks#new"
  post "tasks" => "tasks#create" # <-- Form submits to here.

  get "tasks" => "tasks#index"
  get "tasks/:id/complete" => "tasks#complete"
  get "tasks/:id/edit" => "tasks#edit"
  post "tasks/:id/processed" => "tasks#processed"

  get "assignments/:task_id/new" => "assignments#new"
  post "assignments/:task_id" => "assignments#create"
  delete "assignments/:assignment_id" => "assignments#delete"

  get "families/index" => "families#index"

  get "users/:id/show" => "users#show"

  root to: "tasks#index"
end
 