class CreateOrderByGoods < ActiveRecord::Migration
  def change
    create_table :order_by_goods do |t|
      t.integer :country
      t.integer :user_name_id
      t.integer :province
      t.integer :city
      t.integer :district
      t.integer :sum
      t.timestamps null: false
    end
  end
end
