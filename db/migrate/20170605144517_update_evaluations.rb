class UpdateEvaluations < ActiveRecord::Migration[5.1]
  def up
    remove_column :evaluations, :selector, :boolean
    remove_column :evaluations, :selectee, :boolean
    add_column :evaluations, :selector_id, :integer
    add_column :evaluations, :selectee_id, :integer

    add_index :evaluations, :selector_id
    add_index :evaluations, :selectee_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
