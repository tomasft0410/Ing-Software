class ChangesValServicioNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :valoracion_servicios, :usuario, :user_id
    rename_column :valoracion_servicios, :servicio, :servicio_id
    rename_column :valoracion_carretes, :usuario, :user_id
  end
end
