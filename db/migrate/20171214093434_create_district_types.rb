class CreateDistrictTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :district_types do |t|
      t.string :name, null: false
      t.string :slug, null: false
    end
  end
end
