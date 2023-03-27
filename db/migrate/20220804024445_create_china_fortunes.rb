class CreateChinaFortunes < ActiveRecord::Migration
  def change
    create_table :china_fortunes do |t|
      t.integer :year
      t.string :company
      t.integer :revenue
      t.integer :profit
      t.integer :asset
      t.integer :equity
      t.integer :employee
      t.string :country
      t.string :industry
      t.integer :per_capita_profit

      t.timestamps null: false
    end
  end
end
