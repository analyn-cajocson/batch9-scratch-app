class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.new
  end

  def show
    begin
      @article = Article.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      puts "ERROR #{e}"
      flash[:alert] = "Article not found."
      render :show
    end
  end

  def find_name
    @article = Article.find_by(name: params[:name])
  end

  def new
    @article = Article.new
  end

  def create
    @articles = Article.all
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.js
      else
        format.html { render :index }
      end
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
