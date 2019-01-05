class CustomersController < ApplicationController

  def show
    customer = Rails.cache.fetch(params[:id].to_i)
    render json: customer.to_json
  end

  def create_account
    customer = Rails.cache.fetch(params[:id].to_i)
    if customer
      account = AccountsService.new(customer).create_account(params[:initial_credit])
      render json: account
    else
      head :not_found
    end
  end
end