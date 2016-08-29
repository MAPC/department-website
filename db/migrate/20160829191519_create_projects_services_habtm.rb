class CreateProjectsServicesHabtm < ActiveRecord::Migration
  def change
    create_table :projects_services, id: false do |t|
      t.belongs_to :service, index: true
      t.belongs_to :project, index: true
    end
  end
end
