class Servicio < ApplicationRecord
  validates :nombre, presence: true
  validates :precio, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..1_000_000 }
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  has_many :carretes, through: :contratos
  has_many :contratos, dependent: :destroy
  has_many :valoracion_servicios, dependent: :destroy
  has_many :comunas, through: :operate
  has_many :operates
  has_many :comentarios, dependent: :destroy
end
