ActiveAdmin.register Document do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  ##### permit_params method defines which attributes may be changed #####
  permit_params :list, :of, :attributes, :on, :model, :document_section , :document_level, :document_course,
  :document_type, :document_subject , :document_year , :pdf_file_enonce_file_name , :pdf_file_corrige_file_name 


  form do |f|
    f.inputs "Document Details" do
      f.input :pdf_file_enonce, :as => :file
    end
    f.actions
  end

  show do |ad|
      attributes_table do
        row :title
        row :pdf_file_enonce do
          # image_tag(ad.pdf_file_enonce_file_name.url(:thumb))
        end
      end
  end

  ##### Columns to show #####
  index do
    selectable_column
    column :document_section
    column :document_level
    column :document_course
    column :document_type
    column :document_subject
    column :document_year
    column :pdf_file_enonce_file_name
    column :pdf_file_corrige_file_name


    actions
  end



end
