module Jekyll
  class CodeTag < Jekyll::HighlightBlock

    def initialize(tag_name, text, tokens)
      super(tag_name, text + ' linenos', tokens)
    end

    def render_pygments(context, code)
      
      newcode = ''
      
      first_line_analyzed = false
      initial_spaces = ''

      code.each_line do |line|
      	if not first_line_analyzed
      		next if line.strip == ''

      		first_line_analyzed = true

			if line =~ /^(\s+)/
				initial_spaces = $1
			end
      	end

      	newcode << line.gsub(Regexp.new('^' + initial_spaces), '')
      end

      super(context, newcode)
    end
  end
end

Liquid::Template.register_tag('code', Jekyll::CodeTag)