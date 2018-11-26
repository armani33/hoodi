class AddPerimeterFloatToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :perimeter, :float
  end
end
