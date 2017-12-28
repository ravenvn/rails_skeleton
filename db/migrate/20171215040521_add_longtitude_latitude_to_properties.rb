class AddLongtitudeLatitudeToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :longtitude, :decimal, after: :author_id
    add_column :properties, :latitude, :decimal, after: :longtitude
  end
end
