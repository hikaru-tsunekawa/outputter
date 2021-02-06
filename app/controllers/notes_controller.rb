class NotesController < ApplicationController
  
  
  def index
    @notes = Note.page(params[:page]).reverse_order
  end
  
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.save
    redirect_to notes_path
  end

  def show
    @note = Note.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end
  
  private
  
  def note_params
    params.require(:note).permit(:title, :image, :body)
  end
  
end
