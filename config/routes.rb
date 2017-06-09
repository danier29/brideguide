Rails.application.routes.draw do
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

  devise_for :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "home#index"


end
