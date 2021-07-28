class ChangeUsertypeFromVCarretes < ActiveRecord::Migration[5.2]
  def change
    change_column :valoracion_carretes, :usuario, 'integer USING CAST(usuario AS integer)'
  end
end
