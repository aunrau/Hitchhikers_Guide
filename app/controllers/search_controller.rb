class SearchController < ApplicationController
  def results
    @query = params[:q]
    @guides_found = Guide.where('name LIKE ?', "%#{@query}%")
  end
end
