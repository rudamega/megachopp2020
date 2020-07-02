class Transaction < ApplicationRecord
  belongs_to :extracto
  validates :comprobante, presence: true, length: { minimum: 2 }
end
