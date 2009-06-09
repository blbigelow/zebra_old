class DocumentCommentsController < ApplicationController
  
  before_filter :login_required
  
  # POST /blog_comments.js
  def create
    @document_comment = DocumentComment.new(params[:document_comment])
    @document_comment.user_id = current_user.id
    @document_comment.save()

    flash[:notice] = 'Comment was successfully created.'
    
    respond_to do |format|
        format.html { redirect_to @document_comment.document }
        format.js { render :layout => false }
    end
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.xml
  def destroy
    @document_comment = DocumentComment.find(params[:id])
    @document_comment.destroy

    respond_to do |format|
      format.html { redirect_to(document_comments_url) }
      format.xml  { head :ok }
    end
  end
end