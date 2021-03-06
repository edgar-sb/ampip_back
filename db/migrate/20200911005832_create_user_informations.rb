class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.references :user, foreign_key: true
      t.string :full_name
      t.string :last_name
      t.string :address
      t.string :state
      t.string :office_address
      t.string :charge
      t.datetime :date_of_birth
      t.string :phone_office
      t.integer :cel
      t.references :corporate, foreign_key: true
      t.boolean :status
      t.string :municipality
      t.string :colony
      t.integer :postal_code_number
      t.references :user_type_permision, foreign_key: true
      t.integer :user_type
      t.timestamps
    end
  end
end
