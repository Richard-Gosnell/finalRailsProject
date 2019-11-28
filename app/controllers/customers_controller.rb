# frozen_string_literal: true

class CustomersController < ApplicationController
  def new
    @new_customers = Customer.new
  end

  def show
    @customers = Customer.find(params[:id])
  end
end
