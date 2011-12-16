class CollectionsController < ApplicationController
  def index
    if params[:page] == '2'
      render :index2 and return
    end
  end
  
  def show
    @id = params[:id] || '1'
    @collection = params[:name]
    @name = t("collections.index.#{@collection}")
  end
  
  def showpic
    @id = params[:id]
    @collection = params[:name]
    @name = t("collections.index.#{@collection}") + " - " + t("collections.#{@collection}.p#{@id}.title")
  end
  
end
