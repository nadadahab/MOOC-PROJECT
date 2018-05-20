ActiveAdmin.register Lecture do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :content ,:attachment,:course_id  ,:user_id

index do
    selectable_column
    id_column
    column :content
    column :attachment
    column :course
    column :user
    actions
  end

  filter :content

end
