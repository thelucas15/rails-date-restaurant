class RenameEndTime < ActiveRecord::Migration[5.1]
  def change
    remove_column :match_lists, :end_time
    add_column  :match_lists, :date, :date
  end
end
