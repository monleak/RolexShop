class CreateWatchBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :watch_boxes do |t|
      t.string :title
      t.string :branch
      t.string :model
      t.string :description
      t.string :price
      t.string :avata

      t.timestamps
    end
  end
end
