class AddPerimeterIntegerToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :perimeter, :integer
  end
end
