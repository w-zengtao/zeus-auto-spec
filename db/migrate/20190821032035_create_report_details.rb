class CreateReportDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :report_details do |t|
      t.references :report
      t.decimal :value_2473, precision: 15, scale: 10, comment: "湿度值、百分比"
      t.decimal :value_2481, precision: 15, scale: 10, comment: "温度值"
      t.decimal :value_2483, precision: 15, scale: 10, comment: "风速"
      t.decimal :value_2484, precision: 15, scale: 10, comment: "风向"
      t.decimal :value_4402, precision: 15, scale: 10, comment: "二氧化硫含量"
      t.decimal :value_4404, precision: 15, scale: 10, comment: "一氧化碳含量"
      t.decimal :value_4405, precision: 15, scale: 10, comment: "一氧化氮含量"
      t.decimal :value_4406, precision: 15, scale: 10, comment: "总碳氢含量"
      t.decimal :value_4407, precision: 15, scale: 10, comment: "挥发性有机物"
      t.decimal :value_4467, precision: 15, scale: 10, comment: "二氧化氮含量"
      t.decimal :value_4468, precision: 15, scale: 10, comment: "其他氮氧含量"
      t.decimal :value_4471, precision: 15, scale: 10, comment: "一小时臭氧含量"
      t.decimal :value_4472, precision: 15, scale: 10, comment: "降尘值"
      t.decimal :value_4474, precision: 15, scale: 10, comment: "能见到值"
      t.decimal :value_4482, precision: 15, scale: 10, comment: "大气压值"
      t.decimal :value_4485, precision: 15, scale: 10, comment: "TSP值"
      t.decimal :value_4486, precision: 15, scale: 10, comment: "PM10"
      t.decimal :value_4487, precision: 15, scale: 10, comment: "甲烷"
      t.decimal :value_4488, precision: 15, scale: 10, comment: "非甲烷总烃"
      t.decimal :value_4489, precision: 15, scale: 10, comment: "二氧化碳含量"
      t.decimal :value_448A, precision: 15, scale: 10, comment: "PM2.5"
      t.decimal :value_448B, precision: 15, scale: 10, comment: "PM1.0"
      t.decimal :value_4D71, precision: 15, scale: 10, comment: "八小时臭氧"
      t.integer :status_2473, default: 0
      t.integer :status_2481, default: 0
      t.integer :status_2483, default: 0
      t.integer :status_2484, default: 0
      t.integer :status_4402, default: 0
      t.integer :status_4404, default: 0
      t.integer :status_4405, default: 0
      t.integer :status_4406, default: 0
      t.integer :status_4407, default: 0
      t.integer :status_4467, default: 0
      t.integer :status_4468, default: 0
      t.integer :status_4471, default: 0
      t.integer :status_4472, default: 0
      t.integer :status_4474, default: 0
      t.integer :status_4482, default: 0
      t.integer :status_4485, default: 0
      t.integer :status_4486, default: 0
      t.integer :status_4487, default: 0
      t.integer :status_4488, default: 0
      t.integer :status_4489, default: 0
      t.integer :status_448A, default: 0
      t.integer :status_448B, default: 0
      t.integer :status_4D71, default: 0
    end
  end
end
