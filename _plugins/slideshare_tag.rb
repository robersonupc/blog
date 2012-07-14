require 'rubygems'

# Usage:
#
#    {% video basefile Great Caption%}
#
class SlideshareTag < Liquid::Tag

  def initialize(tag_name, markup, tokens)
    super

    if markup.strip =~ /^([^\s]+)\s+(.+)$/
      @url = $1
      @figcaption = $2
    else
      @url = markup.strip
      @figcaption = ""
      end
  end

  def render(context)

    # renders output
    r  = "<figure class=\"responsive video slideshare\">"
    r += "<div class=\"video-wrapper\">"
    r += "<iframe src=\"http://www.slideshare.net/slideshow/embed_code/#{@url}\" frameborder=\"0\" allowfullscreen></iframe>"
    r += "</div>"

    if @figcaption != ""
    	r += "<figcaption>#{@figcaption}</figcaption>"
    end

    r += "</figure>"
  end
end

Liquid::Template.register_tag('slideshare', SlideshareTag)