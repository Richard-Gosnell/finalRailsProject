# frozen_string_literal: true

class CustomersController < ApplicationController
  def show
    @customers = Customer.find(params[:id])
  end
end
