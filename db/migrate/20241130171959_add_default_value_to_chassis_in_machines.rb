class AddDefaultValueToChassisInMachines < ActiveRecord::Migration[7.2]
  def change
    change_column_default :machines, :chassis, 0
  end
end
