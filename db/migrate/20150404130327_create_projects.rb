class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :subtitle
      t.text :description
      t.string :category
      t.string :image

      t.timestamps null: false
    end
  end
end