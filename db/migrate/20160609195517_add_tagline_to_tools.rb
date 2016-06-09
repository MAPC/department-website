class AddTaglineToTools < ActiveRecord::Migration
  def change
    add_column :tools, :tagline, :text
  end
end
