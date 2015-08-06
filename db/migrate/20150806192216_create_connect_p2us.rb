class CreateConnectP2us < ActiveRecord::Migration
  def change
    create_table :connect_p2us do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
