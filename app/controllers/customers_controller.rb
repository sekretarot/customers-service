class CustomersController < ApplicationController

  def show
    customer = Rails.cache.fetch(params[:id].to_i)
    render json: customer.to_json
  end
  
end