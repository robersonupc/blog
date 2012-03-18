require "premailer"

module Feed
  def prepare_feed(input)
    premailer = Premailer.new(input, { 
    		:with_html_string => true, 
    		:base_url => 'http://sergiolopes.org/',
    		:remove_classes => true,
    		:remove_ids => true,
    		:css => ['_includes/css/feed.css']
    	} 
    )
    premailer.to_inline_css.gsub('figcaption', 'em')
  end
end

Liquid::Template.register_filter(Feed)