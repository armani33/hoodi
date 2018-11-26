class AddPerimeterFloatToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :perimeter, :float
  end
end
