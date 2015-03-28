ActiveAdmin.register Organization do
  permit_params :name, :city, :state, :country, :bio, :addressed_issue


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :city
      f.input :state
      f.input :country, :as => :string
      f.input :bio
      f.input :addressed_issue
    end
    f.actions
  end


end
