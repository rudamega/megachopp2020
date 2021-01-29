class Pdc < ApplicationRecord
  has_many :fechas, dependent: :destroy
end
