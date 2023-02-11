class AddGenderToWatches < ActiveRecord::Migration[7.0]
  def change
    add_column :watches, :gender, :string
  end
end
