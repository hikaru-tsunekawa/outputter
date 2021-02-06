class RenameNoteColumnToComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :note_, :note_id
  end
end
