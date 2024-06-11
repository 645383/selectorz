class AddParentIdToSectors < ActiveRecord::Migration[7.1]
  def change
    add_column :sectors, :parent_id, :integer
  end
end
