class CollectionsController < ApplicationController
  def index
  end
  
  def show
    @title = t("collections.#{params[:name]}")
  end
end
