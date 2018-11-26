class AddPerimeterIntegerToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :perimeter, :integer
  end
end
