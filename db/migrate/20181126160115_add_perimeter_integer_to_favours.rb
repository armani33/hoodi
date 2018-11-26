class AddPerimeterIntegerToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :perimeter, :integer
  end
end
