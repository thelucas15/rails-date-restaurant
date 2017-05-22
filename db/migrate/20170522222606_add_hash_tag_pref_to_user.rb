class AddHashTagPrefToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hash_tag_pref, :string
  end
end
