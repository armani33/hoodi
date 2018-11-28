class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :help_content
      t.string :phone
      t.string :email
      t.date :available_time
      t.references :user, foreign_key: true
      t.references :favour, foreign_key: true

      t.timestamps
    end
  end
end
