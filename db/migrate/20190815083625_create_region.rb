class CreateRegion < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.integer :parent_id
      t.string  :code
      t.string  :name
    end

    add_index(:regions, :parent_id, name: "idx_parent_regions")
  end
end
