# 原始站点小时数据 AQI
class CreateAqiReports < ActiveRecord::Migration[6.0]
  def change
    create_table :aqi_reports do |t|
      t.references :station
      t.integer :aqi,       null: false
      t.integer :iaqi_4402, null: false
      t.integer :iaqi_4404, null: false
      t.integer :iaqi_4467, null: false
      t.integer :iaqi_4471, null: false
      t.integer :iaqi_4486, null: false
      t.integer :iaqi_448A, null: false
      t.integer :iaqi_4D71, null: false
      t.string  :primary_pollution
      t.integer :level
      t.datetime :datetime

      t.timestamps
    end

    add_index(:aqi_reports, [:datetime, :station_id], unique: true, name: 'idx_aqi_time_station')
  end
end
