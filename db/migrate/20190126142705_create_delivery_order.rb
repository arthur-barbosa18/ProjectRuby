class CreateDeliveryOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_orders do |t|
      t.string :sequence_input, null: false
      t.string :sequence_output, null: false
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
