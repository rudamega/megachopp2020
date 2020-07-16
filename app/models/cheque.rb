class Cheque < ApplicationRecord
  belongs_to :bank
  has_many :hojas
end
