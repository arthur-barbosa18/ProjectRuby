class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, limit: 40, null: false
      t.string :address, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
