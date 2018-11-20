class AddPerimeterToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :perimeter, :string
  end
end
