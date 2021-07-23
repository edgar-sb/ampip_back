class CreateUserRolePermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_role_permissions do |t|
      t.integer :permission_id
      t.boolean :read
      t.boolean :write
      t.references :user_rol, null: false, foreign_key: true

      t.timestamps
    end
  end
end
