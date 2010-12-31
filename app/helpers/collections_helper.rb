module CollectionsHelper
  def product_availability(stores)
    stores.split(',').map { |store|
      link_to I18n.t('stores.' + store), stores_show_path(:name => store), :target => '_blank'
    }.join(', ')
  end
end
