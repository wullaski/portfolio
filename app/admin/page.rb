ActiveAdmin.register Page do
  #needed for friendly id and active admin to work together
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  permit_params :title, :heading, :copy, :slug, :image, :published

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :published
      f.input :title, :hint => "The title of the page you are on."
      f.input :slug, :hint => "this will be used as the url"
      f.input :heading
      f.input :copy
      f.input :image, required: false, :hint => f.template.image_tag(f.object.image.url(:thumb))
    end

    f.actions
  end
  
end
