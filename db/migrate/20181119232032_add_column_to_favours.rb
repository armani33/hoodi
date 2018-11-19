class AddColumnToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :favour_type , :string
  end
end
