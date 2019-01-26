class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :uuid, limit: 36, null: false
      t.string :name, null: false
      t.references :section, foreign_key: true, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
