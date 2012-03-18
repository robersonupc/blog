require 'rubygems'
require 'rvideo'

# Usage:
#
#    {% video basefile Great Caption%}
#
class VideoTag < Liquid::Tag

  def initialize(tag_name, markup, tokens)
    super

    if markup.strip =~ /^([^\s]+)\s+(.+)$/
      @basefile = $1
      @figcaption = $2
    else
      @basefile = markup.strip
      @figcaption = ""
      end
  end

  def render(context)
    # get video size
    # file = RVideo::Inspector.new(:file => "video/#{@basefile}.webm")
    # puts file.video_codec

    # TODO: get video size and aspect ratio

    # checks por poster
    if FileTest.exists?("video/#{@basefile}.jpg")
      poster = "poster=\"/video/#{@basefile}.jpg\""
    elsif FileTest.exists?("video/#{@basefile}.png")
      poster = "poster=\"/video/#{@basefile}.png\""
    else
      # no poster
      poster = ""
    end

    # renders output
    r  = "<figure class=\"responsive video\">"
    r += "<div class=\"video-wrapper\">"
    r += "<video controls preload=\"none\" #{poster}>"

    # mobile version (for ios)
    if FileTest.exists?("video/#{@basefile}.mobi.mp4")
      r += "<source src=\"/video/#{@basefile}.mobi.mp4\" type=\"video/mp4\" media=\"(max-device-width:400px)\">"
    end

    # h264
    r += "<source src=\"/video/#{@basefile}.mp4\" type=\"video/mp4\">"

    # webm
    r += "<source src=\"/video/#{@basefile}.webm\" type=\"video/webm\">"

    # theora
    #  <source src="pr6.ogv" type='video/ogg; codecs="theora, vorbis"' />

    # old browsers
    r += "<p>Sinto muito, os vídeos só tocam em navegadores que suportam a tag video do HTML5. Você pode tentar <a href=\"#{@basefile}.mp4\">baixar o vídeo</a> pra assistir.</p>"
    r += "</video>"
    r += "</div>"

    # TODO download links
    if @figcaption != ""
    	r += "<figcaption>#{@figcaption}</figcaption>"
    end

    r += "</figure>"
  end
end

Liquid::Template.register_tag('video', VideoTag)