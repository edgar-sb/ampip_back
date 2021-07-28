class CreatePermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :permissions do |t|
      #t.references :user_rol_permission, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
