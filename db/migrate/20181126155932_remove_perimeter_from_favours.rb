class RemovePerimeterFromFavours < ActiveRecord::Migration[5.2]
  def change
    remove_column :favours, :perimeter
  end
end
