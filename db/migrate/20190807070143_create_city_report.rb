class CreateCityReport < ActiveRecord::Migration[6.0]
  def change
    
    create_table :reports_cities do |t|

      t.integer    :dataattribute, comment: "数据属性、原始 | 审核"
      t.integer    :businesstype,  comment: "业务类型"
      t.integer    :businessitem,  comment: "业务名称"
      t.string     :filename,      comment: "文件名称 - 版本号 | 切割"
      t.datetime   :collected_at,  comment: "数据收集时间"
      t.datetime   :reported_at,   comment: "文件生成时间"
      t.references :station,       comment: "关联的站点"

    end

  end
end

#TODO 后期优化的时候、所有的枚举都可以用 位 来处理、