class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.references :station
      t.integer    :data_attribute, default: 0, comment: '0 原始 1 审核'
      t.integer    :data_type,      default: 1, comment: '0 标况 1 工况'
      t.integer    :business_type,  default: 4, comment: '4 AQ 1 SAQ 2 SPQ 3 SVQ'
      t.integer    :business_item,  default: 1, comment: '1 AQHD 2 AQDD'
      t.string     :filename,       default: ''
      t.datetime   :collected_at
      t.datetime   :reported_at
    end
  end
end
