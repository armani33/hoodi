class RemoveColumnsFromResponses < ActiveRecord::Migration[5.2]
  def change
    rename_table :reponses, :responses

    remove_column :responses, :favour_id
    remove_column :responses, :event_id
    remove_column :responses, :information_id
  end
end
