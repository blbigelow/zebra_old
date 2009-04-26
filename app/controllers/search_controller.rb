class SearchController < ApplicationController
  def search
    @search_results = ActsAsFerret::find(params[:q],'shared')
  end

end
