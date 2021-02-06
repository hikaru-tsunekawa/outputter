class CommentsController < ApplicationController
  
  def create
    note = Note.find(params[:note_id])
    comment = current_user.comments.new(comment_params)
    comment.note_id = note.id
    comment.save
    redirect_to note_path(note)
  end
  
  def destroy
    Comment.find_by(id: params[:id], note_id: params[:note_id]).destroy
    redirect_to note_path(params[:note_id])
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:comment)  
  end
  
end
