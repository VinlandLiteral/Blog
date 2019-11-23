class ArticleController < ApplicationController

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.save 
      redirect_to @article
    else 
      render 'edit'
    end
  end


  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end



end



