class ChangeDataServicio < ActiveRecord::Migration[5.2]
  def change
    change_column :valoracion_servicios, :usuario, 'integer USING CAST(usuario AS integer)'
  end
end
