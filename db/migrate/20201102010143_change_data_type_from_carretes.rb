class ChangeDataTypeFromCarretes < ActiveRecord::Migration[5.2]
  def change
    change_column :carretes, :comuna, 'integer USING CAST(comuna AS integer)'
  end
end
