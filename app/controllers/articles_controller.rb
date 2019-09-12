class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def index
    @articles = Article.order(created_at: :desc)
  end

  def create
    @article = Article.new(article_params)
  
    @article.save
    render :new
  end

  def edit
    @article = Article.find(params[:id])
  end



  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path  
  end

  def show
    @article = Article.find(params[:id])
  end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
