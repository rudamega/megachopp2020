class Fecha < ApplicationRecord
  belongs_to :pdc
  has_many :facturas
end
