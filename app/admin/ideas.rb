ActiveAdmin.register Idea do
  permit_params :title, :description, :image

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :image, :upvotes, :downvotes, :total_comments
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :image, :upvotes, :downvotes, :total_comments]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
