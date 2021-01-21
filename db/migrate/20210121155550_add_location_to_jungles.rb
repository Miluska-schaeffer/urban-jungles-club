class AddLocationToJungles < ActiveRecord::Migration[6.0]
  def change
    add_column :jungles, :location, :string
  end
end
