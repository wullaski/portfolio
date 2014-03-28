class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :date
      t.string :technology
      t.string :role
      t.text :description
      t.integer :category_id
      t.string :link

      t.timestamps
    end
  end
end
