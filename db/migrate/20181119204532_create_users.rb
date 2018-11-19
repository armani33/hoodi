class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :address
      t.string :avatar
      t.string :user_type

      t.timestamps
    end
  end
end
