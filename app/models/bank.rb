class Bank < ApplicationRecord
  has_many :extractos, dependent: :destroy
  has_many :cheques, dependent: :destroy
end
