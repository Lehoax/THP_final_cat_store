class Order < ApplicationRecord
  validates :user, 
    presence :true

  has_many   :joint_items_orders
  has_many   :items, through: :joint_items_orders
  belongs_to :user
  
end
