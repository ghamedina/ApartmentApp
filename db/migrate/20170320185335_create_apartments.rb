class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.string :name
      t.string :phone
      t.string :hours

      t.timestamps null: false
    end
  end
end
