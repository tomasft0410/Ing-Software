class ChangeOfertsName < ActiveRecord::Migration[5.2]
  def change
    rename_column :oferts, :id_carrete, :carrete_id
    rename_column :oferts, :id_user, :user_id
  end
end
