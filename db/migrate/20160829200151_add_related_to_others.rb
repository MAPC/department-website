class AddRelatedToOthers < ActiveRecord::Migration
  def change
    create_table :services_tools, id: false do |t|
      t.belongs_to :service, index: true
      t.belongs_to :tool, index: true
    end

    create_table :datasets_services, id: false do |t|
      t.belongs_to :service, index: true
      t.belongs_to :dataset, index: true
    end
  end
end
