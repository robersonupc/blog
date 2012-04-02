require 'rubygems'

# Usage:
#
#    {% tweetable My message %}
#
class TweetableTag < Liquid::Tag

  def initialize(tag_name, markup, tokens)
    super
    @msg = markup.strip
  end

  def render(context)

    # renders output
    r  = "<blockquote class=\"tweetable\">"
    r += "#{@msg}"
    r += "<a href=\"https://twitter.com/share\" class=\"twitter-share-button\" data-text=\"#{@msg}\" data-via=\"sergio_caelum\" data-related=\"sergio_caelum\" data-count=\"none\">Tweet</a>"
    r += "</blockquote>"
  end
end

Liquid::Template.register_tag('tweetable', TweetableTag)