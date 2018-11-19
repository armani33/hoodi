class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :area
      t.text :content
      t.string :picture
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
