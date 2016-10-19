class AddRelatedToolProjectAndData < ActiveRecord::Migration
  def change
    add_column :datasets, :project_id, :integer
    add_column :tools, :project_id, :integer
  end
end
