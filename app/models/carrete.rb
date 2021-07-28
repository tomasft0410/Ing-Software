class Carrete < ApplicationRecord
  validates :direccion, presence: true
  validates :max_asistentes, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..10_000 }
  validates :fecha_limite, presence: true
  validates :fecha, presence: true
  has_many :users, through: :ofert
  has_many :oferts, dependent: :destroy

  belongs_to :user, class_name: "User", foreign_key: 'user_id'

  has_many :servicios, through: :contrato
  has_many :contratos, dependent: :destroy
  has_many :valoracion_carretes, dependent: :destroy
  has_many :comentario_carretes , dependent: :destroy

  has_many :assists, dependent: :destroy
  has_many :favoritos, dependent: :destroy

  belongs_to :comuna, class_name: "Comuna", foreign_key: 'comuna_id'
end
