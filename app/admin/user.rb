ActiveAdmin.register User do
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

permit_params :name , :email , :date_of_birth  , :avatar ,:is_female ,:password , :role

  form do |f|
    f.semantic_errors
    f.inputs :email, :password, :name, :date_of_birth,  :is_female , :avatar , :role
    f.actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :date_of_birth
    column :avatar
    column :role
    actions
  end

  filter :name

end
