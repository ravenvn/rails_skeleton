class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :name, null: false
      t.string :slug, null: false
    end
  end
end
