# frozen_string_literal: true

class AboutController < ApplicationController
  def show
    @about = about.order([:id])
  end
end
