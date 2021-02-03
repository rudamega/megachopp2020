class Factura < ApplicationRecord
  belongs_to :fecha
  has_one_attached :image
  validates :monto, presence: true
end
