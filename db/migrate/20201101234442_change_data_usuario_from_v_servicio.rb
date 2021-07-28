class ChangeDataUsuarioFromVServicio < ActiveRecord::Migration[5.2]
  def change
    change_column :valoracion_servicios, :servicio, 'integer USING CAST(usuario AS integer)'
  end
end
