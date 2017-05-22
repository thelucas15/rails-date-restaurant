class AddGenderPrefToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender_pref, :string
  end
end
