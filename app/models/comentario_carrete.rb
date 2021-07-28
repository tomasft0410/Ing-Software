class ComentarioCarrete < ApplicationRecord
  validates :carrete, presence: true
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :carrete, class_name: "Carrete", foreign_key: 'carrete_id'
end
