class CreateReceivedProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :received_products do |t|
      t.references :demanded_product, foreign_key: true, null: false
      t.integer :received_amount, limit: 4, default: 0
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
