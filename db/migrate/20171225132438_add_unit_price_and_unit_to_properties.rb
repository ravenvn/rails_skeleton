class AddUnitPriceAndUnitToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :unit_price, :decimal, precision: 10, scale: 2, after: :price
    add_column :properties, :unit, :string, after: :unit_price
  end
end
