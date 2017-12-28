class AddDistrictIdToProperties < ActiveRecord::Migration[5.0]
  def change
    add_reference(:properties, :district, after: :type_id)

    add_index(:properties, [:district_id, :slug], unique: true, name: 'by_district_slug')
  end
end
