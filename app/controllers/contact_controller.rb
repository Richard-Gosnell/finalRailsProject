# frozen_string_literal: true

class ContactController < ApplicationController
  # @contacts = ContactController.find(params[:id])

  def _contact
    @contacts = Contact.find(params[:id])
  end
end
