class AddDineroRecaudadoToCarretes < ActiveRecord::Migration[5.2]
  def change
    add_column :carretes, :dinero_recaudado, :integer
  end
end
