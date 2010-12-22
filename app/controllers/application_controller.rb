require 'http_accept_language'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale


  private
  
  def set_locale
    # if params[:locale] is nil then I18n.default_locale will be used
    I18n.locale = compatible_to_available_locale(params[:locale]) || extract_locale_from_accept_language_header
  end
  
  def default_url_options(options={})
    #logger.debug "Default locale: #{I18n.default_locale}\n"
    # At this point locale should be 'en-US', 'fr-CA' or nil
    options.merge(I18n.locale ? { :locale => available_to_compatible_locale(I18n.locale) } : {})
  end
  
  
  def extract_locale_from_accept_language_header
    #logger.debug "Prefered languages: #{request.user_preferred_languages.inspect}\n"
    #logger.debug "Compatible language: #{request.compatible_language_from(%w{en-US fr-CA})}\n"
    request.compatible_language_from(%w{en-US fr-CA})
  end
  
  def compatible_to_available_locale(compatible)
    {'en' => 'en-US', 'fr' => 'fr-CA'}[compatible]
  end
  
  def available_to_compatible_locale(available)
    {'en-US' => 'en', 'fr-CA' => 'fr'}[available.to_s]
  end
end
