class AddAgePrefStartToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :age_pref_start, :integer
  end
end
