class CommentsController < ApplicationController
  before_filter :load_commentable

  def create
    @comment = @commentable.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @commentable, notice: "Comment was created."
    else
      redirect_to @commentable, notice: "Comment was not created."
    end
  end

  def destroy
    @comment.destroy
  end


  private

  def load_commentable
    resource, id = request.path.split('/')[1, 2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end


  def comment_params
    params.require(:comment).permit(:content, :user_id )
  end
end
