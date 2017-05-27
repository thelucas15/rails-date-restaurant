class RemoveColumnFromEvaluation < ActiveRecord::Migration[5.1]
  def change

        add_column :evaluations, :selector, :boolean
        add_column :evaluations, :selectee, :boolean
        remove_column :evaluations, :decision

  end
end
