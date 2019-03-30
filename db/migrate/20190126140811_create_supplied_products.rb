class CreateSuppliedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :supplied_products do |t|
      t.integer :demanded_amount, limit: 4, default: 0
      t.integer :supplied_amount, limit: 4, default: 0
      t.references :product, foreign_key: true, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
