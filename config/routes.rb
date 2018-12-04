Rails.application.routes.draw do
  # Routes for the Weighting resource:

  # CREATE
  get("/weightings/new", { :controller => "weightings", :action => "new_form" })
  post("/create_weighting", { :controller => "weightings", :action => "create_row" })

  # READ
  get("/weightings", { :controller => "weightings", :action => "index" })
  get("/weightings/:id_to_display", { :controller => "weightings", :action => "show" })

  # UPDATE
  get("/weightings/:prefill_with_id/edit", { :controller => "weightings", :action => "edit_form" })
  post("/update_weighting/:id_to_modify", { :controller => "weightings", :action => "update_row" })

  # DELETE
  get("/delete_weighting/:id_to_remove", { :controller => "weightings", :action => "destroy_row" })

  #------------------------------

  # Routes for the Death resource:

  # CREATE
  get("/deaths/new", { :controller => "deaths", :action => "new_form" })
  post("/create_death", { :controller => "deaths", :action => "create_row" })

  # READ
  get("/deaths", { :controller => "deaths", :action => "index" })
  get("/deaths/:id_to_display", { :controller => "deaths", :action => "show" })

  # UPDATE
  get("/deaths/:prefill_with_id/edit", { :controller => "deaths", :action => "edit_form" })
  post("/update_death/:id_to_modify", { :controller => "deaths", :action => "update_row" })

  # DELETE
  get("/delete_death/:id_to_remove", { :controller => "deaths", :action => "destroy_row" })

  #------------------------------

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
