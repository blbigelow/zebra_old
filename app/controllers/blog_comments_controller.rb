class BlogCommentsController < ApplicationController
  
  before_filter :login_required
  
  # POST /blog_comments
  # POST /blog_comments.xml
  # POST /blog_comments.js
  def create
    @blog_comment = BlogComment.new(params[:blog_comment])
    @blog_comment.save()

    respond_to do |format|
        flash[:notice] = 'BlogComments was successfully created.'
        format.js
    end
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.xml
  def destroy
    @blog_comments = BlogComment.find(params[:id])
    @blog_comments.destroy

    respond_to do |format|
      format.html { redirect_to(blog_comments_url) }
      format.xml  { head :ok }
    end
  end
end
