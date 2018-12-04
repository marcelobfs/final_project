class MarketPricesController < ApplicationController
  def index
    @market_prices = MarketPrice.page(params[:page]).per(10)

    render("market_price_templates/index.html.erb")
  end

  def show
    @market_price = MarketPrice.find(params.fetch("id_to_display"))

    render("market_price_templates/show.html.erb")
  end

  def new_form
    @market_price = MarketPrice.new

    render("market_price_templates/new_form.html.erb")
  end

  def create_row
    @market_price = MarketPrice.new

    @market_price.observation = params.fetch("observation")
    @market_price.gender = params.fetch("gender")
    @market_price.current_price = params.fetch("current_price")
    @market_price.thirty_days_price = params.fetch("thirty_days_price")
    @market_price.age_group = params.fetch("age_group")

    if @market_price.valid?
      @market_price.save

      redirect_back(:fallback_location => "/market_prices", :notice => "Market price created successfully.")
    else
      render("market_price_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @market_price = MarketPrice.find(params.fetch("prefill_with_id"))

    render("market_price_templates/edit_form.html.erb")
  end

  def update_row
    @market_price = MarketPrice.find(params.fetch("id_to_modify"))

    @market_price.observation = params.fetch("observation")
    @market_price.gender = params.fetch("gender")
    @market_price.current_price = params.fetch("current_price")
    @market_price.thirty_days_price = params.fetch("thirty_days_price")
    @market_price.age_group = params.fetch("age_group")

    if @market_price.valid?
      @market_price.save

      redirect_to("/market_prices/#{@market_price.id}", :notice => "Market price updated successfully.")
    else
      render("market_price_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @market_price = MarketPrice.find(params.fetch("id_to_remove"))

    @market_price.destroy

    redirect_to("/market_prices", :notice => "Market price deleted successfully.")
  end
end
