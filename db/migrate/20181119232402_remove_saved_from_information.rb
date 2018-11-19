class RemoveSavedFromInformation < ActiveRecord::Migration[5.2]
  def change
    remove_column :information, :saved
  end
end
