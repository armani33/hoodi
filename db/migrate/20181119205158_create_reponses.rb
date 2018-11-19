class CreateReponses < ActiveRecord::Migration[5.2]
  def change
    create_table :reponses do |t|
      t.text :content
      t.string :distance
      t.references :user, foreign_key: true
      t.references :favour, foreign_key: true
      t.references :event, foreign_key: true
      t.references :information, foreign_key: true
      t.string :post_type

      t.timestamps
    end
  end
end
