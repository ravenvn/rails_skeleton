class AddOriginalLinkToProperies < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :original_link, :string, after: :latitude
  end
end
