class CreateUserOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :user_orders do |t|
      t.references :product, null: false, foreign_key: true
      t.belongs_to :user
      t.belongs_to :order
      t.integer :price
      t.integer :discount_amt
      t.integer :quantity

      t.timestamps
    end
  end
end
