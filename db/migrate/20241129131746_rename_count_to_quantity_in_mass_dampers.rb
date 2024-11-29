class RenameCountToQuantityInMassDampers < ActiveRecord::Migration[7.2]
  def change
    rename_column :mass_dampers, :count, :quantity
  end
end
