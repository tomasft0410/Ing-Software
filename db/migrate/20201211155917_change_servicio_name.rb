class ChangeServicioName < ActiveRecord::Migration[5.2]
  def change
    rename_column :servicios, :id_creador, :user_id
  end
end
