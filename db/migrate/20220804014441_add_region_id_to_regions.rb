class AddRegionIdToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :region_id, :integer
    add_column :order_by_goods, :order_id, :integer
  end
end
