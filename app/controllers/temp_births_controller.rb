class TempBirthsController < ApplicationController
  def index
    @temp_births = TempBirth.all

    render("temp_birth_templates/index.html.erb")
  end

  def show
    @temp_birth = TempBirth.find(params.fetch("id_to_display"))

    render("temp_birth_templates/show.html.erb")
  end

  def new_form
    @temp_birth = TempBirth.new

    render("temp_birth_templates/new_form.html.erb")
  end

  def create_row
    @temp_birth = TempBirth.new

    @temp_birth.earring_id = params.fetch("earring_id")
    @temp_birth.gender = params.fetch("gender")
    @temp_birth.mother_earring_id = params.fetch("mother_earring_id")
    @temp_birth.race = params.fetch("race")
    @temp_birth.birthdate = params.fetch("birthdate")

    if @temp_birth.valid?
      @temp_birth.save

      redirect_back(:fallback_location => "/temp_births", :notice => "Temp birth created successfully.")
    else
      render("temp_birth_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @temp_birth = TempBirth.find(params.fetch("prefill_with_id"))

    render("temp_birth_templates/edit_form.html.erb")
  end

  def update_row
    @temp_birth = TempBirth.find(params.fetch("id_to_modify"))

    @temp_birth.earring_id = params.fetch("earring_id")
    @temp_birth.gender = params.fetch("gender")
    @temp_birth.mother_earring_id = params.fetch("mother_earring_id")
    @temp_birth.race = params.fetch("race")
    @temp_birth.birthdate = params.fetch("birthdate")

    if @temp_birth.valid?
      @temp_birth.save

      redirect_to("/temp_births/#{@temp_birth.id}", :notice => "Temp birth updated successfully.")
    else
      render("temp_birth_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @temp_birth = TempBirth.find(params.fetch("id_to_remove"))

    @temp_birth.destroy

    redirect_to("/temp_births", :notice => "Temp birth deleted successfully.")
  end
end
