class AddPhotoToFavours < ActiveRecord::Migration[5.2]
  def change
    add_column :favours, :photo, :string
  end
end
