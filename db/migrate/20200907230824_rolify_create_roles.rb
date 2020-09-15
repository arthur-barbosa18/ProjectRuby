class RolifyCreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name, unique: true
      t.references :resource, :polymorphic => true
      t.datetime :deleted_at, index: true
      t.timestamps

    end

    create_table(:users_roles, :id => false) do |t|
      t.references :user
      t.references :role
      t.datetime :deleted_at, index: true
      t.timestamps

    end

    add_index(:roles, :name, unique: true)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:users_roles, [ :user_id, :role_id ])
  end
end