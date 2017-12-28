class CreateStreets < ActiveRecord::Migration[5.0]
  def change
    create_table :streets do |t|
      t.string :name, null: false
      t.string :slug, null: false

      t.references :type, index: true, foreign_key: { to_table: :street_types }
      t.references :district
    end
  end
end
