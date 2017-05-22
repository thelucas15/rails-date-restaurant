class AddAgePrefEndToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :age_pref_end, :integer
  end
end
