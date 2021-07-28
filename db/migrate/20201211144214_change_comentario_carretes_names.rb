class ChangeComentarioCarretesNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :comentario_carretes, :id_carrete, :carrete_id
    rename_column :comentario_carretes, :id_user, :user_id
  end
end
