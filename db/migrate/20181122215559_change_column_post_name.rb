class ChangeColumnPostName < ActiveRecord::Migration[5.2]
  def change
    rename_column :responses, :post_type, :postable_type
    rename_column :responses, :post_id, :postable_id
  end
end
