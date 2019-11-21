# frozen_string_literal: true

class AboutController < ApplicationController
  def index
    @abouts = About.order('id')
  end
end
