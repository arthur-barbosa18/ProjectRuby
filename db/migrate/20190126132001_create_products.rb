class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :uuid, limit: 36, null: false
      t.string :name, null: false
      t.references :section, foreign_key: true
      t.decimal :price, precision: 10, scale: 2, default: 0
      t.decimal :price_per_kilo, precision: 10, sacle: 2, default: 0
      t.string :brand
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
