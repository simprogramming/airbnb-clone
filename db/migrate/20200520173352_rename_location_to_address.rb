class RenameLocationToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :listings, :location, :address
  end
end
