class CattleCatalogsController < ApplicationController
  def index
    @q = CattleCatalog.ransack(params[:q])
    @cattle_catalogs = @q.result(:distinct => true).includes(:pregnancies, :weightings, :vaccinations, :death, :cattle_sale).page(params[:page]).per(10)

    render("cattle_catalog_templates/index.html.erb")
  end

  def show
    @vaccination = Vaccination.new
    @weighting = Weighting.new
    @pregnancy = Pregnancy.new
    @cattle_catalog = CattleCatalog.find(params.fetch("id_to_display"))

    render("cattle_catalog_templates/show.html.erb")
  end

  def new_form
    @cattle_catalog = CattleCatalog.new

    render("cattle_catalog_templates/new_form.html.erb")
  end

  def create_row
    @cattle_catalog = CattleCatalog.new

    @cattle_catalog.first_weight = params.fetch("first_weight")
    @cattle_catalog.source = params.fetch("source")
    @cattle_catalog.race = params.fetch("race")
    @cattle_catalog.gender = params.fetch("gender")
    @cattle_catalog.price_per_kilo = params.fetch("price_per_kilo")
    @cattle_catalog.father = params.fetch("father")
    @cattle_catalog.earring_id = params.fetch("earring_id")
    @cattle_catalog.purchase_or_weaning_date = params.fetch("purchase_or_weaning_date")
    @cattle_catalog.mother_earring_id = params.fetch("mother_earring_id")
    @cattle_catalog.birthdate = params.fetch("birthdate")
    @cattle_catalog.status = params.fetch("status")

    if @cattle_catalog.valid?
      @cattle_catalog.save

      redirect_back(:fallback_location => "/cattle_catalogs", :notice => "Cattle catalog created successfully.")
    else
      render("cattle_catalog_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @cattle_catalog = CattleCatalog.find(params.fetch("prefill_with_id"))

    render("cattle_catalog_templates/edit_form.html.erb")
  end

  def update_row
    @cattle_catalog = CattleCatalog.find(params.fetch("id_to_modify"))

    @cattle_catalog.first_weight = params.fetch("first_weight")
    @cattle_catalog.source = params.fetch("source")
    @cattle_catalog.race = params.fetch("race")
    @cattle_catalog.gender = params.fetch("gender")
    @cattle_catalog.price_per_kilo = params.fetch("price_per_kilo")
    @cattle_catalog.father = params.fetch("father")
    @cattle_catalog.earring_id = params.fetch("earring_id")
    @cattle_catalog.purchase_or_weaning_date = params.fetch("purchase_or_weaning_date")
    @cattle_catalog.mother_earring_id = params.fetch("mother_earring_id")
    @cattle_catalog.birthdate = params.fetch("birthdate")
    @cattle_catalog.status = params.fetch("status")

    if @cattle_catalog.valid?
      @cattle_catalog.save

      redirect_to("/cattle_catalogs/#{@cattle_catalog.id}", :notice => "Cattle catalog updated successfully.")
    else
      render("cattle_catalog_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @cattle_catalog = CattleCatalog.find(params.fetch("id_to_remove"))

    @cattle_catalog.destroy

    redirect_to("/cattle_catalogs", :notice => "Cattle catalog deleted successfully.")
  end
end
