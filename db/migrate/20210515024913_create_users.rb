class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
        t.string :name, null: false
        t.decimal :cashback, null: false
        t.string :email, null: true
        t.timestamps
    end
  end
end