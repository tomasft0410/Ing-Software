class Contrato < ApplicationRecord
  belongs_to :carrete, class_name: 'Carrete', foreign_key: 'carrete_id'   # optional = true
  belongs_to :servicio, class_name: 'Servicio', foreign_key: 'servicio_id'
end
