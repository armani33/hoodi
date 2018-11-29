class AddReservedToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reserved, :boolean
  end
end
