class CollectionsController < ApplicationController
  def index
  end
  
  def show
    @collection = params[:name]
    @title = t("collections.index.#{@collection}")
  end
  
  def showpic
    @id = params[:id]
    @collection = params[:name]
    @title = t("collections.index.#{@collection}") + " - " + t("collections.#{@collection}.#{@id}")
  end
  
end
