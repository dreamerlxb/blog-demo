class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  # GET /articles/new
  def new

  end

  # GET /articles/1
  def show
    @article = Article.find(params[:id])
  end

  # POST /articles/create
  def create
    # rails 要求我们明确地告诉 Rails 哪些参数允许在控制器动作中使用
    @article = Article.new(params.require(:article).permit(:title, :content))
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :content))
      redirect_to @article
    else
      render 'edit'
    end
  end


  def destroy
    @article = Article.find(params[:id])
    # Article.delete
    @article.delete
    redirect_to articles_path
  end
end
