class AddUniqueConstraintToSectorName < ActiveRecord::Migration[7.1]
  def change
    add_index :sectors, %i[name parent_id], unique: true
  end
end
