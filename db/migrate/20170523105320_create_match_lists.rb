class CreateMatchLists < ActiveRecord::Migration[5.1]
  def change
    create_table :match_lists do |t|
      t.time :start_time
      t.time :end_time
      t.references :restaurant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
