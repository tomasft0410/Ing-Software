class ChangeNombreEmailToIdUsuario < ActiveRecord::Migration[5.2]
  def change
    rename_column :oferts, :email, :id_user
  end
end
