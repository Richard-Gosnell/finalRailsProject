# frozen_string_literal: true

class OrderController < ApplicationController
  @order = OrderController.find(params[:id])
end
