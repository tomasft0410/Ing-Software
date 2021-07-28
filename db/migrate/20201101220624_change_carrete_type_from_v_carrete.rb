class ChangeCarreteTypeFromVCarrete < ActiveRecord::Migration[5.2]
  def change
    change_column :valoracion_carretes, :carrete, 'integer USING CAST(usuario AS integer)'
  end
end
