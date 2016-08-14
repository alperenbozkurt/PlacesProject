class CommentsController < ApplicationController
  def create
    @comment = Comment.new(body: params[:body],place_id: params[:place_id])

    if @comment.save
      flash[:success] = "Başarıyla Eklendi"
      redirect_to place_path(@comment.place)
    else
      render :show
    end
  end
  def strong_params
		params.permit(:body, :place_id)
	end
end
