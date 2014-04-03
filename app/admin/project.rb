ActiveAdmin.register Project do
  permit_params :name, :date, :technology, :role, :description, :category_id, :link, 
    assets_attributes: [:id, :project_id, :name, :description, :url, :image, :_destroy]

  index do
    selectable_column
    column :name
    column :date
    column :technology
    column :role
    column :category
    column "Category" do |c|
      Category.find(c.category_id).name
    end
    column :link
    actions
  end

  filter :name
  filter :date
  filter :category_id

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :published
      f.input :name
      f.input :date
      f.input :technology
      f.input :role
      f.input :description
      f.input :category
    end

    f.inputs "Gallery" do
      f.has_many :assets, :allow_destroy => true, :heading => 'Assets' do |af|
        af.input :name
        af.input :description, :input_html => { :rows => 4 }
        af.input :url
        af.input :image, required: false, :hint => af.template.image_tag(af.object.image.url(:thumb))
      end
    end

    f.actions
  end

end
