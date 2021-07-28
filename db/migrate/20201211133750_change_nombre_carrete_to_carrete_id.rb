class ChangeNombreCarreteToCarreteId < ActiveRecord::Migration[5.2]
  def change
    rename_column :valoracion_carretes, :carrete, :carrete_id
  end
end
