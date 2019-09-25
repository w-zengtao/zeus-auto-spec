class CreateCityReportExt < ActiveRecord::Migration[6.0]
  def change
    create_table :reports_city_exts do |t|
      t.integer :city_id
    end

    add_index(:reports_city_exts, :city_id, name: 'idx_city_ext')
  end
end
