class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.string :description, limit: 140, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
