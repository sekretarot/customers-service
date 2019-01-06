module Admin
  class CustomersController < ApplicationController
    include ApplicationHelper

    def show
      @customer = Rails.cache.fetch(params[:id].to_i)
    end

  end
end