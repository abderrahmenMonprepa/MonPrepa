ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  ##### permit_params method defines which attributes may be changed #####
  permit_params :list, :of, :attributes, :on, :model, :first_name , :last_name, :email, :date_of_birth, 
  :cin_number , :phone_number , :school_year , :section , :city , :institute_id

  ##### Columns to show #####
  index do
    selectable_column
    column :first_name
    column :last_name
    column :email
    column :date_of_birth
    column :cin_number
    column :phone_number
    column :section
    column :city
    column :school_year
    column :institute_id

    actions
  end

end
