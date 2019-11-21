# frozen_string_literal: true

ActiveAdmin.register Book do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :book_name, :page_count, :author_id, :genre_id, :price, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:book_name, :page_count, :author, :genre, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
