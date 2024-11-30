class AddThrustAngleToRollers < ActiveRecord::Migration[7.2]
  def change
    add_column :rollers, :thrust_angle, :float
  end
end
