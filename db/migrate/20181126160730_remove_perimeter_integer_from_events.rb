class RemovePerimeterIntegerFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :perimeter
  end
end
