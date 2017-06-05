class AdddAceptedToEvaluations < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluations, :accepted, :boolean
    add_index :evaluations, :accepted
  end
end
