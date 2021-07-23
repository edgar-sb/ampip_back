class CreateTenantUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tenant_users do |t|
      t.string :property
      t.string :name_bussines
      t.string :country
      t.string :product_badge
      t.integer :ID_SCIAN
      t.integer :ID_DENUE
      t.integer :antiquity
      t.integer :superficie
      t.references :tenant_history, null: false, foreign_key: true
      t.timestamps
    end
  end
end
