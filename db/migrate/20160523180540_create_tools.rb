class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :title
      t.string :screenshot
      t.string :url
      t.text :body
      t.timestamps null: false
    end
  end
end
