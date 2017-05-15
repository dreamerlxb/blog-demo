class CommentsController < ApplicationController
  # POST /articles/:article_id/comments
  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(params.require(:comment).permit(:title, :content))
    redirect_to article_path(@article)
  end

  # DELETE /articles/:article_id/comments/:id
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  # private def comment_params
  #   params.require :comment .permit :title, :content
  # end
end
