class RenamePostImageIdColumnToComments < ActiveRecord::Migration[5.2]
  def change
     rename_column :comments, :post_image_id, :note_
  end
end
