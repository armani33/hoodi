class CreateFavours < ActiveRecord::Migration[5.2]
  def change
    create_table :favours do |t|
      t.string :title
      t.string :area
      t.text :content
      t.string :picture
      t.boolean :helped
      t.boolean :solved
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
