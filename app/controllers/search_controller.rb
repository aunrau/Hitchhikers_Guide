class SearchController < ApplicationController
  def results
    @query = params[:q]
    @guides = Guide.where('character LIKE ?', "%#{@query}%")
  end
end
