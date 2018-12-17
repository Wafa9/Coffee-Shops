class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
  end
end
