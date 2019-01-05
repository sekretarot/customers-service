module Admin
  class CustomersController < ApplicationController

    def show
      @customer = Rails.cache.fetch(params[:id].to_i)
    end

  end
end