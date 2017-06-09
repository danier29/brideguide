Rails.application.routes.draw do

  # Routes for the Assignment resource:
  # CREATE
  get "/assignments/new", :controller => "assignments", :action => "new"
  post "/create_assignment", :controller => "assignments", :action => "create"

  # READ
  get "/assignments", :controller => "assignments", :action => "index"
  get "/assignments/:id", :controller => "assignments", :action => "show"

  # UPDATE
  get "/assignments/:id/edit", :controller => "assignments", :action => "edit"
  post "/update_assignment/:id", :controller => "assignments", :action => "update"

  # DELETE
  get "/delete_assignment/:id", :controller => "assignments", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Forum resource:
  # CREATE
  get "/forums/new", :controller => "forums", :action => "new"
  post "/create_forum", :controller => "forums", :action => "create"

  # READ
  get "/forums", :controller => "forums", :action => "index"
  get "/forums/:id", :controller => "forums", :action => "show"

  # UPDATE
  get "/forums/:id/edit", :controller => "forums", :action => "edit"
  post "/update_forum/:id", :controller => "forums", :action => "update"

  # DELETE
  get "/delete_forum/:id", :controller => "forums", :action => "destroy"
  #------------------------------

devise_for :users

root "weddings#index"

  # Routes for the Task resource:
  # CREATE
  get "/tasks/new", :controller => "tasks", :action => "new"
  post "/create_task", :controller => "tasks", :action => "create"

  # READ
  get "/tasks", :controller => "tasks", :action => "index"
  get "/tasks/:id", :controller => "tasks", :action => "show"

  # UPDATE
  get "/tasks/:id/edit", :controller => "tasks", :action => "edit"
  post "/update_task/:id", :controller => "tasks", :action => "update"

  # DELETE
  get "/delete_task/:id", :controller => "tasks", :action => "destroy"
  #------------------------------



  # Routes for the Wedding resource:
  # CREATE
  get "/weddings/new", :controller => "weddings", :action => "new"
  post "/create_wedding", :controller => "weddings", :action => "create"

  # READ
  get "/weddings", :controller => "weddings", :action => "index"
  get "/weddings/:id", :controller => "weddings", :action => "show"

  # UPDATE
  get "/weddings/:id/edit", :controller => "weddings", :action => "edit"
  post "/update_wedding/:id", :controller => "weddings", :action => "update"

  # DELETE
  get "/delete_wedding/:id", :controller => "weddings", :action => "destroy"
  #------------------------------



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
