class StoresController < ApplicationController
  def index
  end
  
  def show
    @short_name = params[:name]
    @name = I18n.t('stores.' + @short_name)
    render :layout => 'store'
  end
end
