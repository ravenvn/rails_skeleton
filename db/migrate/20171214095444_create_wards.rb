class CreateWards < ActiveRecord::Migration[5.0]
  def change
    create_table :wards do |t|
      t.string :name, null: false
      t.string :slug, null: false

      t.references :type, index: true, foreign_key: { to_table: :ward_types }
      t.references :district
    end
  end
end
