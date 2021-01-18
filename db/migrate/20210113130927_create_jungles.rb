class CreateJungles < ActiveRecord::Migration[6.0]
  def change
    create_table :jungles do |t|
      t.string :name
      t.string :banner_url

      t.timestamps
    end
  end
end
