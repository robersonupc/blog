require "stringex"

module StringToUrlSlug
  def to_url_slug(input)
    input.to_url
  end
end

Liquid::Template.register_filter(StringToUrlSlug)