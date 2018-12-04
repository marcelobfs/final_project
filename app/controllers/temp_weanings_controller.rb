class TempWeaningsController < ApplicationController
  def index
    @temp_weanings = TempWeaning.all

    render("temp_weaning_templates/index.html.erb")
  end

  def show
    @temp_weaning = TempWeaning.find(params.fetch("id_to_display"))

    render("temp_weaning_templates/show.html.erb")
  end

  def new_form
    @temp_weaning = TempWeaning.new

    render("temp_weaning_templates/new_form.html.erb")
  end

  def create_row
    @temp_weaning = TempWeaning.new

    @temp_weaning.earring_id = params.fetch("earring_id")
    @temp_weaning.first_weight = params.fetch("first_weight")
    @temp_weaning.estimated_price_per_kilo = params.fetch("estimated_price_per_kilo")

    if @temp_weaning.valid?
      @temp_weaning.save

      redirect_back(:fallback_location => "/temp_weanings", :notice => "Temp weaning created successfully.")
    else
      render("temp_weaning_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @temp_weaning = TempWeaning.find(params.fetch("prefill_with_id"))

    render("temp_weaning_templates/edit_form.html.erb")
  end

  def update_row
    @temp_weaning = TempWeaning.find(params.fetch("id_to_modify"))

    @temp_weaning.earring_id = params.fetch("earring_id")
    @temp_weaning.first_weight = params.fetch("first_weight")
    @temp_weaning.estimated_price_per_kilo = params.fetch("estimated_price_per_kilo")

    if @temp_weaning.valid?
      @temp_weaning.save

      redirect_to("/temp_weanings/#{@temp_weaning.id}", :notice => "Temp weaning updated successfully.")
    else
      render("temp_weaning_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @temp_weaning = TempWeaning.find(params.fetch("id_to_remove"))

    @temp_weaning.destroy

    redirect_to("/temp_weanings", :notice => "Temp weaning deleted successfully.")
  end
end
