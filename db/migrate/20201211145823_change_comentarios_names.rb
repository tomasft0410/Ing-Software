class ChangeComentariosNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :comentarios, :servicio, :servicio_id
    rename_column :comentarios, :usuario, :user_id
  end
end
