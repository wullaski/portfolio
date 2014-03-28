class AddProjectIdToAssets < ActiveRecord::Migration
  def change
    add_reference :assets, :project
  end
end
