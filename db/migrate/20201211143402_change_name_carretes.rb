class ChangeNameCarretes < ActiveRecord::Migration[5.2]
  def change
    rename_column :carretes, :id_creador, :user_id
    rename_column :carretes, :comuna, :comuna_id
  end
end
