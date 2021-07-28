class ChangeNamesAssist < ActiveRecord::Migration[5.2]
  def change
    rename_column :assists, :id_user, :user_id
    rename_column :assists, :id_carrete, :carrete_id
  end
end
