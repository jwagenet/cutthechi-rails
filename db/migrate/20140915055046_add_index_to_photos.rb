class AddIndexToPhotos < ActiveRecord::Migration
  def change
		add_index :candidates, :photo, unique: true
  end
end
