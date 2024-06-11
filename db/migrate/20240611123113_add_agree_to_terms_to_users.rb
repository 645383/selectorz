class AddAgreeToTermsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :agree_to_terms, :boolean
  end
end
