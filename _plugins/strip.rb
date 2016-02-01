# Replaces multiple newlines and whitespace
# between them with one newline
#
# @see: https://github.com/aucor/jekyll-plugins/blob/master/strip.rb

module Jekyll
  class StripTag < Liquid::Block

    def render(context)
      super.gsub /\n\s*\n/, "\n"
    end

  end
end

Liquid::Template.register_tag('strip', Jekyll::StripTag)
