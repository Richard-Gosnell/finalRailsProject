# frozen_string_literal: true

ActiveAdmin.register Customer do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :customer_ID, :first_name, :last_name, :address, :order_ID
  #
  # or
  #
  # permit_params do
  #   permitted = [:customer_ID, :first_name, :last_name, :address, :order_ID]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
