class AddColumnsToResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :post_type
    add_reference :responses, :post, polymorphic: true, index: true
  end
end
