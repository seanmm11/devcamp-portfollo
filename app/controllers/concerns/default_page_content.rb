module DefaultPageContent
  extend ActiveSupport::Concern
  
   included do 
     before_filter :set_page_defaults
  end
  
   def set_page_defaults
    @page_title = "Sean Mchugh's Portfolio"
    @seo_keywords = "Sean Mchugh portfolio"
   end
end