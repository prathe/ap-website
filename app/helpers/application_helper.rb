module ApplicationHelper
  def toggle_locale_link
    link_to t('other_language'), t('other_language_link')
  end
end
