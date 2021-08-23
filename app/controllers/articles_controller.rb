class ArticlesController < ApplicationController

  def index #index.html.erb
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def find_name
    @article = Article.find_by(name: params[:name])
  end

  def new
    @hey = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path
    else
      render :new
    end
    
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end

  private

  def article_params
    params.require(:article).permit(:name, :body)
  end

end
