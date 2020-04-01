class Order < ApplicationRecord
  has_many :user_order, dependent: :destroy
  has_many :user, through: :user_order
end
