# frozen_string_literal: true

class ContactController < ApplicationController
  # @contacts = ContactController.find(params[:id])

  # def _contact
  #  @contacts = Contact.where('id = 1', params[:id])
  # end
  def index
    @contacts = Contact.order('id')
  end
end
