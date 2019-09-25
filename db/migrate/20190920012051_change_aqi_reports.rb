class ChangeAqiReports < ActiveRecord::Migration[6.0]
  def change
    remove_index(:aqi_reports, name: :idx_aqi_time_station)
    add_column(:aqi_reports, :business_item, :integer, { default: 1 })
    rename_column(:aqi_reports, :datetime, :collected_at)
    add_index(:aqi_reports, [:business_item, :collected_at, :station_id], unique: true, name: 'uni_idx_on_aqi')
  end
end
