class CommentpicsController < ApplicationController
    
    http_basic_authenticate_with name: "user", password: "user", only: :destroy
    
    def create
        @picture = Picture.find(params[:picture_id])
        @commentpic = @picture.commentpics.create(commentpic_params)
        redirect_to picture_path(@picture)
    end
    
    def destroy
        @picture = Picture.find(params[:picture_id])
        @commentpic = @picture.commentpics.find(params[:id])
        @commentpic.destroy
        redirect_to picture_path(@picture)
    end
    
    private
    def commentpic_params
        params.require(:commentpic).permit(:commenter, :body)
    end
end
