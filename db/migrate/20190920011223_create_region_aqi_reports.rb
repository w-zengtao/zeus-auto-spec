class CreateRegionAqiReports < ActiveRecord::Migration[6.0]
  def change
    create_table :region_aqi_reports do |t|
      
      t.references :region
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
      t.integer :business_item,  default: 1, comment: '1 AQHD 2 AQDD' 
      t.datetime :collected_at

      t.timestamps 
    end

    add_index(:region_aqi_reports, [:business_item, :collected_at, :region_id], unique: true, name: 'uni_idx_on_region_aqi')
  end
end


# class ChangeAqiReports < ActiveRecord::Migration[6.0]
#   def change
#     remove_index(:aqi_reports, :idx_aqi_time_station)
#     add_column(:aqi_reports, :business_item, :integer, { default: 1 })
#     add_index(:aqi_reports, [])
#   end
# end
