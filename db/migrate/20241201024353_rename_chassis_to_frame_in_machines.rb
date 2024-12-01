class RenameChassisToFrameInMachines < ActiveRecord::Migration[7.2]
  def change
    rename_column :machines, :chassis, :frame
  end
end
