class AddCoordinatesToJungles < ActiveRecord::Migration[6.0]
  def change
    add_column :jungles, :latitude, :float
    add_column :jungles, :longitude, :float
  end
end
