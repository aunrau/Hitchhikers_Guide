class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :character
      t.string :specie
      t.string :planet
      t.string :location
      t.string :quote

      t.timestamps
    end
  end
end
