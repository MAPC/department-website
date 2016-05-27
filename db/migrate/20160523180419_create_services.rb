class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :desc
      t.timestamps null: false
      t.references :group
    end
  end
end
