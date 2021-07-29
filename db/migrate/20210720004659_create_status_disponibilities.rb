class CreateStatusDisponibilities < ActiveRecord::Migration[6.1]
  def change
    create_table :status_disponibilities do |t|
      t.boolean :status_property
      t.decimal :average_price
      t.integer :use

      t.timestamps
    end
  end
end
