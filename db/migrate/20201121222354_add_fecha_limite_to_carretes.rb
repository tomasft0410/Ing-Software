class AddFechaLimiteToCarretes < ActiveRecord::Migration[5.2]
  def change
    add_column :carretes, :fecha_limite, :date
  end
end
