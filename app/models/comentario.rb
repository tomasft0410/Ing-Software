class Comentario < ApplicationRecord
  validates :servicio, presence: true
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :servicio, class_name: "Servicio", foreign_key: 'servicio_id'
end
