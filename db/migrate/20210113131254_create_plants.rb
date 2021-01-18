class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :nickname
      t.string :name
      t.references :jungle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
