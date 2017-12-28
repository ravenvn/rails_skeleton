class AddPrecisionAndScaleToDecimalFields < ActiveRecord::Migration[5.0]
  def change
    change_column :properties, :square, :decimal, precision: 10, scale: 2
    change_column :properties, :price, :decimal, precision: 10, scale: 2
    change_column :properties, :floors, :decimal, precision: 10, scale: 2
    change_column :properties, :facade, :decimal, precision: 10, scale: 2
    change_column :properties, :frontline, :decimal, precision: 10, scale: 2
    change_column :properties, :longtitude, :decimal, precision: 10, scale: 6
    change_column :properties, :latitude, :decimal, precision: 10, scale: 6
  end
end
