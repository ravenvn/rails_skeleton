class CreatePropertyImages < ActiveRecord::Migration[5.0]
  def change
    create_table :property_images do |t|
      t.string :name, null: false

      t.references :property

      t.timestamps
    end
  end
end
