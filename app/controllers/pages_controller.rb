# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    @pages = PagesController.find(params[:id])
  end
end
