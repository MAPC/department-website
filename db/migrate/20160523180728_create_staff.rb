class CreateStaff < ActiveRecord::Migration
  def change
    create_table :staff do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.references :group
    end
  end
end
