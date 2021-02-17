class FavoritesController < ApplicationController
  def create
    note = Note.find(params[:note_id])
    favorite = current_user.favorites.new(note_id: note.id)
    favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    note = Note.find(params[:note_id])
    favorite = current_user.favorites.find_by(note_id: note.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
