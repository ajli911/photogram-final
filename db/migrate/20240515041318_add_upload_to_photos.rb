class AddUploadToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_column :photos, :upload, :string
  end
end
