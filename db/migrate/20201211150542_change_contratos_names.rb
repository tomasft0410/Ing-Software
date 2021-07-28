class ChangeContratosNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :contratos, :id_carrete, :carrete_id
    rename_column :contratos, :id_servicio, :servicio_id
  end
end
