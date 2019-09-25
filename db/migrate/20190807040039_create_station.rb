class CreateStation < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :type,   comment: "站点类型, 在 Rails 里面 STI 使用"
      t.string :number, comment: "站点编号"
      t.string :code,   comment: "站点代码"
      t.string :name,   comment: "站点名称"
      t.references :region
    end

    add_index(:stations, :number, unique: true, name: 'idx_number_station')
    # add_index(:stations, :region_id, name: 'index_region_station')
  end
end
