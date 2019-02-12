class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :planet
      t.string :location

      t.timestamps
    end
  end
end
