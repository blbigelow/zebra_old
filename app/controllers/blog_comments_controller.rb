class BlogCommentsController < ApplicationController
  
  before_filter :login_required
  
  # POST /blog_comments.js
  def create
    @blog_comment = BlogComment.new(params[:blog_comment])
    @blog_comment.user_id = current_user.id
    @blog_comment.save()

    flash[:notice] = 'Comment was successfully created.'
    
    respond_to do |format|
        format.html { redirect_to @blog_comment.blog }
        format.js { render :layout => false }
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
