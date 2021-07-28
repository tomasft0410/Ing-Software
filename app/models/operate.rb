class Operate < ApplicationRecord
  belongs_to :servicio, class_name: 'Servicio', foreign_key: 'id_servicio'   # optional = true
  belongs_to :comuna, class_name: 'Comuna', foreign_key: 'id_lugar'
end
