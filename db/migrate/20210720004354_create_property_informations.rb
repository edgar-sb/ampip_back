class CreatePropertyInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :property_informations do |t|
      t.references :properties, null: false, foreign_key: true
      t.string :name
      t.string :tipo
      t.integer :superficie
      t.string :address
      t.string :english_name
      t.string :park_property
      t.string :region
      t.string :market
      t.string :industry
      t.integer :suprficie_total
      t.integer :superficie_urbanizada
      t.integer :superficie_disponible
      t.string :inicio_de_operaciones
      t.integer :number_employe
      t.text :practices_recognition
      t.text :infrastructure
      t.integer :navy_number
      t.text :message
      t.integer :postal_code
      t.string :colony
      t.string :municipality
      t.string :state
      t.integer :status
      t.references :status_disponibilities, null: false, foreign_key: true
      t.timestamps
    end
  end
end
