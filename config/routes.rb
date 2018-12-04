Rails.application.routes.draw do
  # Routes for the Cattle catalog resource:

  # CREATE
  get("/cattle_catalogs/new", { :controller => "cattle_catalogs", :action => "new_form" })
  post("/create_cattle_catalog", { :controller => "cattle_catalogs", :action => "create_row" })

  # READ
  get("/cattle_catalogs", { :controller => "cattle_catalogs", :action => "index" })
  get("/cattle_catalogs/:id_to_display", { :controller => "cattle_catalogs", :action => "show" })

  # UPDATE
  get("/cattle_catalogs/:prefill_with_id/edit", { :controller => "cattle_catalogs", :action => "edit_form" })
  post("/update_cattle_catalog/:id_to_modify", { :controller => "cattle_catalogs", :action => "update_row" })

  # DELETE
  get("/delete_cattle_catalog/:id_to_remove", { :controller => "cattle_catalogs", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
