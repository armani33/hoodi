class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :area, :perimeter
    rename_column :favours, :area, :perimeter
    rename_column :information, :areacontent, :content
  end
end
