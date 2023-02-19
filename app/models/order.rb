class Order < ApplicationRecord
  belongs_to :user
  belongs_to :watch
  belongs_to :watch_box
  belongs_to :watch_strap
end
