class CreateWardTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :ward_types do |t|
      t.string :name, null: false
      t.string :slug, null: false
    end
  end
end
