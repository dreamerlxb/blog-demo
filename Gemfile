source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.0'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'friendly_id', '~> 5.2', '>= 5.2.1'

# 权限控制
gem 'devise', '~> 4.3'
# gem 'petergate', '~> 1.7', '>= 1.7.3'
gem 'cancancan', '~> 2.0'

# 样式
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

# 环境变量
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'

# 分页
gem 'kaminari', '~> 1.0', '>= 1.0.1'

# 验证码
gem 'rucaptcha', '~> 2.1', '>= 2.1.3'

gem 'dalli', '~> 2.7', '>= 2.7.6'

gem 'devcamp_view_tool', '~> 0.1.0'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

# 文件上传
gem 'carrierwave', '~> 1.1'

# 文件压缩
gem 'mini_magick', '~> 4.7'

# 七牛文件上传
gem 'carrierwave-qiniu', '~> 1.1'
gem 'cocoon', '~> 1.2', '>= 1.2.10'
gem 'gritter', '~> 1.2'
gem 'redis', '~> 3.3', '>= 3.3.3'

# markdown
gem 'redcarpet', '~> 3.4'
gem 'pygments.rb', '~> 1.1', '>= 1.1.2'
gem 'coderay', '~> 1.1', '>= 1.1.1'

ruby "2.4.1"

# 国际化
gem 'rails-i18n', '~> 5.0', '>= 5.0.4'