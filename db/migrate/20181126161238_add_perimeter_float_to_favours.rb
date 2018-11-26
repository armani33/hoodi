class AddPerimeterFloatToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :perimeter, :float
  end
end
