class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end


  private

  def blog_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

end
