class AddColorAndIconToTools < ActiveRecord::Migration
  def change
    add_column :tools, :color, :string
    add_column :tools, :icon, :string
  end
end
