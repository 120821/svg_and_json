class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.integer :type_id
      t.timestamps null: false
    end
  end
end
