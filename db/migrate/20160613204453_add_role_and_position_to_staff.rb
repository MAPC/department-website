class AddRoleAndPositionToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :position, :integer
    add_column :staffs, :role, :string
  end
end
