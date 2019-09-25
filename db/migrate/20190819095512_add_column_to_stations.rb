class AddColumnToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :longitude, :decimal, {precision: 15, scale: 10}
    add_column :stations, :latitude, :decimal, {precision: 15, scale: 10}
    remove_column :stations, :code, :string
    add_column :stations, :state, :integer, default: 0, comment: '站点状态、在线 离线'
    add_column :stations, :updated_at, :datetime
  end
end
