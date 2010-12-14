class CollectionsController < ApplicationController
  def index
  end
  
  def show
    @id = params[:id] || '1'
    @collection = params[:name]
    @title = t("collections.index.#{@collection}")
  end
  
  def showpic
    @id = params[:id]
    @collection = params[:name]
    @title = t("collections.index.#{@collection}") + " - " + t("collections.#{@collection}.p#{@id}.title")
  end
  
end
