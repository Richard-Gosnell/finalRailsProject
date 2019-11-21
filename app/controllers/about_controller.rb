# frozen_string_literal: true

class AboutController < ApplicationController
  resources :about

  def index
    @abouts = About.all
    # @abouts = About.find(params[:all])
    # @abouts = About.find(params[:id])
  end

  def show
    @abouts = About.find(params[:id])
  end
end
