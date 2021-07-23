class CreateTenantHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :tenant_histories do |t|
      t.references :property, null: false, foreign_key: true
      t.integer :tenant_user_id

      t.timestamps
    end
  end
end
