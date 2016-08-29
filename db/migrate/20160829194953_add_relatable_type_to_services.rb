class AddRelatableTypeToServices < ActiveRecord::Migration
  def change
    add_column :services, :relatable, :integer
    add_column :services, :relatable_type, :string
  end
end
