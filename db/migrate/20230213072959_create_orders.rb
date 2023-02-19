class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :watch, null: false, foreign_key: true
      t.references :watch_box, null: false, foreign_key: true
      t.references :watch_strap, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total_price

      t.timestamps
    end
  end
end
