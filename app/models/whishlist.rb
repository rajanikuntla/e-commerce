class Whishlist < ApplicationRecord
  belongs_to :product, dependent: :destroy

end
