class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.attachment :avatar
      t.text :bio
      t.timestamps null: false
      t.references :group
    end
  end
end
