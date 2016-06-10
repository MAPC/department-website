class AddDownloadHyperlinkToDatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :download, :string
  end
end
