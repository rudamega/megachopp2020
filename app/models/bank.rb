class Bank < ApplicationRecord
  has_many :extractos
  has_many :cheques
end
