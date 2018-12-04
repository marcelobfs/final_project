Rails.application.routes.draw do
  # Routes for the Temp weaning resource:

  # CREATE
  get("/temp_weanings/new", { :controller => "temp_weanings", :action => "new_form" })
  post("/create_temp_weaning", { :controller => "temp_weanings", :action => "create_row" })

  # READ
  get("/temp_weanings", { :controller => "temp_weanings", :action => "index" })
  get("/temp_weanings/:id_to_display", { :controller => "temp_weanings", :action => "show" })

  # UPDATE
  get("/temp_weanings/:prefill_with_id/edit", { :controller => "temp_weanings", :action => "edit_form" })
  post("/update_temp_weaning/:id_to_modify", { :controller => "temp_weanings", :action => "update_row" })

  # DELETE
  get("/delete_temp_weaning/:id_to_remove", { :controller => "temp_weanings", :action => "destroy_row" })

  #------------------------------

  # Routes for the Temp birth resource:

  # CREATE
  get("/temp_births/new", { :controller => "temp_births", :action => "new_form" })
  post("/create_temp_birth", { :controller => "temp_births", :action => "create_row" })

  # READ
  get("/temp_births", { :controller => "temp_births", :action => "index" })
  get("/temp_births/:id_to_display", { :controller => "temp_births", :action => "show" })

  # UPDATE
  get("/temp_births/:prefill_with_id/edit", { :controller => "temp_births", :action => "edit_form" })
  post("/update_temp_birth/:id_to_modify", { :controller => "temp_births", :action => "update_row" })

  # DELETE
  get("/delete_temp_birth/:id_to_remove", { :controller => "temp_births", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pregnancy resource:

  # CREATE
  get("/pregnancies/new", { :controller => "pregnancies", :action => "new_form" })
  post("/create_pregnancy", { :controller => "pregnancies", :action => "create_row" })

  # READ
  get("/pregnancies", { :controller => "pregnancies", :action => "index" })
  get("/pregnancies/:id_to_display", { :controller => "pregnancies", :action => "show" })

  # UPDATE
  get("/pregnancies/:prefill_with_id/edit", { :controller => "pregnancies", :action => "edit_form" })
  post("/update_pregnancy/:id_to_modify", { :controller => "pregnancies", :action => "update_row" })

  # DELETE
  get("/delete_pregnancy/:id_to_remove", { :controller => "pregnancies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cattle sale resource:

  # CREATE
  get("/cattle_sales/new", { :controller => "cattle_sales", :action => "new_form" })
  post("/create_cattle_sale", { :controller => "cattle_sales", :action => "create_row" })

  # READ
  get("/cattle_sales", { :controller => "cattle_sales", :action => "index" })
  get("/cattle_sales/:id_to_display", { :controller => "cattle_sales", :action => "show" })

  # UPDATE
  get("/cattle_sales/:prefill_with_id/edit", { :controller => "cattle_sales", :action => "edit_form" })
  post("/update_cattle_sale/:id_to_modify", { :controller => "cattle_sales", :action => "update_row" })

  # DELETE
  get("/delete_cattle_sale/:id_to_remove", { :controller => "cattle_sales", :action => "destroy_row" })

  #------------------------------

  # Routes for the Vaccination resource:

  # CREATE
  get("/vaccinations/new", { :controller => "vaccinations", :action => "new_form" })
  post("/create_vaccination", { :controller => "vaccinations", :action => "create_row" })

  # READ
  get("/vaccinations", { :controller => "vaccinations", :action => "index" })
  get("/vaccinations/:id_to_display", { :controller => "vaccinations", :action => "show" })

  # UPDATE
  get("/vaccinations/:prefill_with_id/edit", { :controller => "vaccinations", :action => "edit_form" })
  post("/update_vaccination/:id_to_modify", { :controller => "vaccinations", :action => "update_row" })

  # DELETE
  get("/delete_vaccination/:id_to_remove", { :controller => "vaccinations", :action => "destroy_row" })

  #------------------------------

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
