module ApplicationHelper
  def toggle_locale_link
    link_to t('other_language'), :toggle_locale
  end
end
