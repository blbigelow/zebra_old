class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    
     respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @tag }
      end
  end

end
