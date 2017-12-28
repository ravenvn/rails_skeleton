class CreatePropertyTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :property_types do |t|
      t.string :name, null: false, default: ''
      t.string :slug, null: false, default: ''
    end
  end
end
