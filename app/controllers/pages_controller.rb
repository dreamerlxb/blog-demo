class PagesController < ApplicationController
  layout 'page'

  def home
    # @posts = Blog.all
    # @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def check_markdown
    @txt_md = params[:md]
    puts('====txt md======')
    # puts(@txt_md)
  end
end
