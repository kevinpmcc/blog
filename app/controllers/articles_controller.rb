class ArticlesController < ApplicationController
  def new
    session[:article_params] ||= {}
    @article = Article.new(session[:article_params])
    @article.current_step = session[:article_step]
  end

  def index
    @articles = Article.order(created_at: :desc)
  end

  def create
    session[:article_params].deep_merge!(params[:article]) if params[:article]
    @article = Article.new(session[:article_params])
    @article.current_step = session[:article_step]
    if @article.valid?
      if params[:back_button]
        @article.previous_step
      elsif @article.last_step?
        @article.save 
      else
        @article.next_step
      end
      session[:article_step] = @article.current_step
    end
    if @article.new_record?
      render "new"
    else
      session[:article_step] = session[:article_params] = nil
      flash[:notice] = "article saved!"
      redirect_to @article
    end
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
