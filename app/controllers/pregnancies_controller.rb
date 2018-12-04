class PregnanciesController < ApplicationController
  def index
    @pregnancies = Pregnancy.all

    render("pregnancy_templates/index.html.erb")
  end

  def show
    @pregnancy = Pregnancy.find(params.fetch("id_to_display"))

    render("pregnancy_templates/show.html.erb")
  end

  def new_form
    @pregnancy = Pregnancy.new

    render("pregnancy_templates/new_form.html.erb")
  end

  def create_row
    @pregnancy = Pregnancy.new

    @pregnancy.earring_id = params.fetch("earring_id")
    @pregnancy.bull_name = params.fetch("bull_name")
    @pregnancy.born = params.fetch("born")
    @pregnancy.cattle_id = params.fetch("cattle_id")

    if @pregnancy.valid?
      @pregnancy.save

      redirect_back(:fallback_location => "/pregnancies", :notice => "Pregnancy created successfully.")
    else
      render("pregnancy_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @pregnancy = Pregnancy.find(params.fetch("prefill_with_id"))

    render("pregnancy_templates/edit_form.html.erb")
  end

  def update_row
    @pregnancy = Pregnancy.find(params.fetch("id_to_modify"))

    @pregnancy.earring_id = params.fetch("earring_id")
    @pregnancy.bull_name = params.fetch("bull_name")
    @pregnancy.born = params.fetch("born")
    @pregnancy.cattle_id = params.fetch("cattle_id")

    if @pregnancy.valid?
      @pregnancy.save

      redirect_to("/pregnancies/#{@pregnancy.id}", :notice => "Pregnancy updated successfully.")
    else
      render("pregnancy_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @pregnancy = Pregnancy.find(params.fetch("id_to_remove"))

    @pregnancy.destroy

    redirect_to("/pregnancies", :notice => "Pregnancy deleted successfully.")
  end
end
