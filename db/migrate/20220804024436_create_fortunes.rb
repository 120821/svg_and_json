class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :company
      t.integer :revenue
      t.integer :profit
      t.integer :asset
      t.integer :equity
      t.string :ceo
      t.integer :employee
      t.string :country
      t.string :industry
      t.timestamps null: false
    end
  end
end
