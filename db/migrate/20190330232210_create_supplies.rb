class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.integer :demanded_initial, limit: 4, null: false
      t.integer :demanded_amount, limit: 4, null: false
      t.integer :supplied_amount, limit: 4, default: 0
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end