class AddPositionToDatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :position, :integer
  end
end
