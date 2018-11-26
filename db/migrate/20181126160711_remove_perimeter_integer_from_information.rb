class RemovePerimeterIntegerFromInformation < ActiveRecord::Migration[5.2]
  def change
    remove_column :information, :perimeter
  end
end
