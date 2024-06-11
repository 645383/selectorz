class CreateSectorsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :sectors_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
