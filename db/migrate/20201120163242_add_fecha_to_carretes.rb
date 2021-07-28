class AddFechaToCarretes < ActiveRecord::Migration[5.2]
  def change
    add_column :carretes, :fecha, :date
  end
end
