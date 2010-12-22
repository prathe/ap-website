module ApplicationHelper
  def toggle_locale_link
    link_to t('other_language'), t('other_language_link')
  end
  
  def facebook_locale
    case I18n.locale || I18n.default_locale
    when :'en-US': 'en_US'
    when :'fr-CA': 'fr_FR'
    end
  end
end
