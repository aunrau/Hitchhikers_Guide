class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :character
      t.string :specie
      t.string :quote
      t.references :planet, foreign_key: true

      t.timestamps
    end
  end
end
