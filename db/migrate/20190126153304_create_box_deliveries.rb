class CreateBoxDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :box_deliveries do |t|
      t.integer :amount, limit: 4, null: false
      t.references :store, foreign_key: true, null: false
      t.integer :status, limit: 1, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
