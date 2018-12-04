class DeathsController < ApplicationController
  def index
    @deaths = Death.all

    render("death_templates/index.html.erb")
  end

  def show
    @death = Death.find(params.fetch("id_to_display"))

    render("death_templates/show.html.erb")
  end

  def new_form
    @death = Death.new

    render("death_templates/new_form.html.erb")
  end

  def create_row
    @death = Death.new

    @death.earring_id = params.fetch("earring_id")
    @death.cause = params.fetch("cause")
    @death.cattle_id = params.fetch("cattle_id")

    if @death.valid?
      @death.save

      redirect_back(:fallback_location => "/deaths", :notice => "Death created successfully.")
    else
      render("death_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @death = Death.find(params.fetch("prefill_with_id"))

    render("death_templates/edit_form.html.erb")
  end

  def update_row
    @death = Death.find(params.fetch("id_to_modify"))

    @death.earring_id = params.fetch("earring_id")
    @death.cause = params.fetch("cause")
    @death.cattle_id = params.fetch("cattle_id")

    if @death.valid?
      @death.save

      redirect_to("/deaths/#{@death.id}", :notice => "Death updated successfully.")
    else
      render("death_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @death = Death.find(params.fetch("id_to_remove"))

    @death.destroy

    redirect_to("/deaths", :notice => "Death deleted successfully.")
  end
end
