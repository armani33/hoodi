class AddColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_type , :string
    add_column :events, :start_age , :integer
    add_column :events, :end_age , :integer
  end
end
