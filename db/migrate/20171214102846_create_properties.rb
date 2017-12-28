class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.string :address
      t.text :description
      t.string :avatar
      t.decimal :square
      t.decimal :price
      t.integer :beds
      t.integer :toilet
      t.decimal :floors
      t.decimal :facade
      t.decimal :frontline
      t.string :owner_name
      t.string :owner_phone
      t.string :owner_phone2
      t.boolean :status
      t.boolean :approved

      t.references :market_type
      t.references :type, index: true, foreign_key: { to_table: :property_types }
      t.references :ward
      t.references :street
      t.references :direction
      t.references :author, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
