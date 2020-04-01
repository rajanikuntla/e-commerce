class CreateWhishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :whishlists do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
