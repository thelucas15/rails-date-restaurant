class RemoveUserFromEvaluations < ActiveRecord::Migration[5.1]
  def up
    remove_column :evaluations, :user_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
