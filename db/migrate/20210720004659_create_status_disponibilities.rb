class CreateStatusDisponibilities < ActiveRecord::Migration[6.1]
  def change
    create_table :status_disponibilities do |t|
      t.references :property_informations, null: false, foreign_key: true
      t.boolean :status_property
      t.decimal :average_price
      t.integer :use

      t.timestamps
    end
  end
end
