ActiveAdmin.register Material do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :material, :title, :sort_order, :slug, :short_description, :long_description, :github_link, :slides, :practice_files, :icon

  show do |ad|
    attributes_table do
      row :title
      row :slug
      row :sort_order
      row :short_description
      row :long_description
      row :github_link
      row :slides
      row :practice_files
      row :icon do
        image_tag(ad.icon.url)
      end
      row :created_at
      row :updated_at
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Edit Material" do
      f.input :title, placeholder: "Intro to HTML/CSS"
      f.input :slug, placeholder: "intro-to-html"
      f.input :sort_order, as: :select, collection: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], include_blank: false
      f.input :short_description
      f.input :long_description
      f.input :github_link
      f.input :slides
      f.input :practice_files
      f.input :icon
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
