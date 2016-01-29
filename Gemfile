source "https://rubygems.org"

gem 'jekyll'

group :jekyll_plugins do
  gem 'octopress-paginate'
  gem 'octopress-hooks',
    # Pending release
    # See: https://github.com/octopress/hooks/pull/14
    github: 'octopress/hooks',
    ref: 'master'
end

group :heroku do
  gem 'rack-jekyll'
end
