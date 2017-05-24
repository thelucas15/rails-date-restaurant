class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :food_type
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
