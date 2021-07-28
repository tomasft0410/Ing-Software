class Comuna < ApplicationRecord
  validates :nombre, presence: true
  has_many :carretes
  has_many :servicios
end
