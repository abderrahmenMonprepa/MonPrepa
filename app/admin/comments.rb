ActiveAdmin.register Comment, as: "UserComment" do
  ##### permit_params method defines which attributes may be changed #####
  permit_params :list, :of, :attributes, :on, :model, :comment_text , :comment_title, :user_id, :document_id

  ##### Columns to show #####
  index do
    selectable_column
    column :comment_text
    column :comment_title
    column :user_id
    column :document_id


    actions
  end
end