class WeightingsController < ApplicationController
  def index
    @q = Weighting.ransack(params[:q])
    @weightings = @q.result(:distinct => true).includes(:cattle).page(params[:page]).per(10)

    render("weighting_templates/index.html.erb")
  end

  def show
    @weighting = Weighting.find(params.fetch("id_to_display"))

    render("weighting_templates/show.html.erb")
  end

  def new_form
    @weighting = Weighting.new

    render("weighting_templates/new_form.html.erb")
  end

  def create_row
    @weighting = Weighting.new

    @weighting.earring_id = params.fetch("earring_id")
    @weighting.weight = params.fetch("weight")
    @weighting.cattle_id = params.fetch("cattle_id")
    @weighting.lot = params.fetch("lot")

    if @weighting.valid?
      @weighting.save

      redirect_back(:fallback_location => "/weightings", :notice => "Weighting created successfully.")
    else
      render("weighting_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_cattle_catalog
    @weighting = Weighting.new

    @weighting.earring_id = params.fetch("earring_id")
    @weighting.weight = params.fetch("weight")
    @weighting.cattle_id = params.fetch("cattle_id")
    @weighting.lot = params.fetch("lot")

    if @weighting.valid?
      @weighting.save

      redirect_to("/cattle_catalogs/#{@weighting.cattle_id}", notice: "Weighting created successfully.")
    else
      render("weighting_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @weighting = Weighting.find(params.fetch("prefill_with_id"))

    render("weighting_templates/edit_form.html.erb")
  end

  def update_row
    @weighting = Weighting.find(params.fetch("id_to_modify"))

    @weighting.earring_id = params.fetch("earring_id")
    @weighting.weight = params.fetch("weight")
    @weighting.cattle_id = params.fetch("cattle_id")
    @weighting.lot = params.fetch("lot")

    if @weighting.valid?
      @weighting.save

      redirect_to("/weightings/#{@weighting.id}", :notice => "Weighting updated successfully.")
    else
      render("weighting_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_cattle
    @weighting = Weighting.find(params.fetch("id_to_remove"))

    @weighting.destroy

    redirect_to("/cattle_catalogs/#{@weighting.cattle_id}", notice: "Weighting deleted successfully.")
  end

  def destroy_row
    @weighting = Weighting.find(params.fetch("id_to_remove"))

    @weighting.destroy

    redirect_to("/weightings", :notice => "Weighting deleted successfully.")
  end
end
