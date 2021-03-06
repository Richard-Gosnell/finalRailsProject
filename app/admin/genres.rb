# frozen_string_literal: true

ActiveAdmin.register Genre do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :genre, :book_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre, :book_name, :author]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
