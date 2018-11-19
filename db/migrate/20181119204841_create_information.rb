class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :title
      t.text :areacontent
      t.string :picture
      t.boolean :saved
      t.boolean :solved
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
