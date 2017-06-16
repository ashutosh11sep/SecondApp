class CommentsController < ApplicationController
  
  def create
    #byebug
    @article = Product.find(params[:product_id])
   @comment = @article.comments.new(comment_params)
    @comment.user_id=current_user.id
    @comment.save
     redirect_to product_path(@article)
end
private
    def comment_params
      params.require(:comment).permit(:title, :comment)
    end
end
