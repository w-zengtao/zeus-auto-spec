class AddLatToRegion < ActiveRecord::Migration[6.0]
  def change
    add_column :regions, :longitude, :decimal, {precision: 15, scale: 10}
    add_column :regions, :latitude, :decimal, {precision: 15, scale: 10}
  end
end
