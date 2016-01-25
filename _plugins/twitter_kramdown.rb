module Jekyll
  module Converters
    class Markdown
      class TwitterKramdown < ::Jekyll::Converters::Markdown::KramdownParser

        TWITTER_HANDLE_REGEX = /(?<=^|(?<=[^a-zA-Z0-9\-_\.]))@([A-Za-z]+[A-Za-z0-9]+)/

        def convert(content)
          super.gsub(TWITTER_HANDLE_REGEX, '<a href="https://twitter.com/\1">@\1</a>')
        end
      end
    end
  end
end
