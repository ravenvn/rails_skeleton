class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :name, null: false
      t.string :slug, null: false

      t.references :type, index: true, foreign_key: { to_table: :district_types }
      t.references :province
    end
  end
end
