class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.datetime :start_date
      t.references :user, index: true, foreign_key: true
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
