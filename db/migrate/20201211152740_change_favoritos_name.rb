class ChangeFavoritosName < ActiveRecord::Migration[5.2]
  def change
    rename_column :favoritos, :id_user, :user_id
    rename_column :favoritos, :id_carrete, :carrete_id
  end
end
