class CreateDemandedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :demanded_products do |t|
      t.integer :amount, limit: 4, default: 0
      t.references :product, foreign_key: true, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
