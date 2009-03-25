class BlogCommentsController < ApplicationController
  
  before_filter :login_required
  
  # GET /blog_comments
  # GET /blog_comments.xml
  def index
    @blog_comments = BlogComments.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blog_comments }
    end
  end

  # GET /blog_comments/1
  # GET /blog_comments/1.xml
  def show
    @blog_comments = BlogComments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blog_comments }
    end
  end

  # GET /blog_comments/new
  # GET /blog_comments/new.xml
  def new
    @blog_comments = BlogComments.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog_comments }
    end
  end

  # GET /blog_comments/1/edit
  def edit
    @blog_comments = BlogComments.find(params[:id])
  end

  # POST /blog_comments
  # POST /blog_comments.xml
  def create
    @blog_comments = BlogComments.new(params[:blog_comments])

    respond_to do |format|
      if @blog_comments.save
        flash[:notice] = 'BlogComments was successfully created.'
        format.html { redirect_to(@blog_comments) }
        format.xml  { render :xml => @blog_comments, :status => :created, :location => @blog_comments }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog_comments.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blog_comments/1
  # PUT /blog_comments/1.xml
  def update
    @blog_comments = BlogComments.find(params[:id])

    respond_to do |format|
      if @blog_comments.update_attributes(params[:blog_comments])
        flash[:notice] = 'BlogComments was successfully updated.'
        format.html { redirect_to(@blog_comments) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog_comments.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_comments/1
  # DELETE /blog_comments/1.xml
  def destroy
    @blog_comments = BlogComments.find(params[:id])
    @blog_comments.destroy

    respond_to do |format|
      format.html { redirect_to(blog_comments_url) }
      format.xml  { head :ok }
    end
  end
end
