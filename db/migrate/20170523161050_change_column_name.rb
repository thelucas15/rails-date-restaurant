class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username
  end
end
