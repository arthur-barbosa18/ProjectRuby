class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :name, null: false
      t.decimal :ticket_price, null: false
      t.timestamps
    end
  end
end
