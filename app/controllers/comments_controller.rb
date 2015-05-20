class CommentsController < ApplicationController
    
    http_basic_authenticate_with name: "user", password: "user", only: :destroy
    
    def create
        @journal = Journal.find(params[:journal_id])
        @comment = @journal.comments.create(comment_params)
        redirect_to journal_path(@journal)
    end
    
    def destroy
        @journal = Journal.find(params[:journal_id])
        @comment = @journal.comments.find(params[:id])
        @comment.destroy
        redirect_to journal_path(@journal)
    end
    
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end
