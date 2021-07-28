class Favorito < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'   # optional = true
  belongs_to :carrete, class_name: 'Carrete', foreign_key: 'carrete_id'
end
