class AddColumnToCategories < ActiveRecord::Migration
  def up
    add_column :categories, :slug, :string
    add_index :categories, :slug, unique: true
  end
  def down
    remove_column :categories, :slug
    remove_index :categories, :slug
  end
end
