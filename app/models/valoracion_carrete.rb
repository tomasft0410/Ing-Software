class ValoracionCarrete < ApplicationRecord
  validates :user, presence: true
  validates :puntuacion, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..10 }
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :carrete, class_name: "Carrete", foreign_key: 'carrete_id'
end
