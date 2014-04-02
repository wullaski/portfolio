class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :copy
      t.string :slug

      t.timestamps
    end
  end
end
